import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hive/hive.dart';
import 'package:http/http.dart';
import 'package:logging/logging.dart';
import 'package:mobile/src/data/auth_service.dart';
import 'package:mobile/src/data/database_service.dart';
import 'package:mobile/src/data/google_service.dart';
import 'package:mobile/src/data/http_service.dart';
import 'package:mobile/src/epics/app_epics.dart';
import 'package:mobile/src/middleware/app_middleware.dart';
import 'package:mobile/src/models/app_state.dart';
import 'package:mobile/src/models/serializers.dart';
import 'package:mobile/src/presentation/home.dart';
import 'package:mobile/src/presentation/login/login_page.dart';
import 'package:mobile/src/presentation/login/password_page.dart';
import 'package:mobile/src/presentation/movie_details/movie_details.dart';
import 'package:mobile/src/reducer/reducer.dart';
import 'package:mobile/src/util/action_interceptor.dart';
import 'package:mobile/src/util/logging.dart';
import 'package:path_provider/path_provider.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:redux_logging/redux_logging.dart';
import 'package:root/root.dart' hide registerHiveTypes;
import 'package:rxdart/rxdart.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // initialize Hive
  final Directory appDir = await getApplicationDocumentsDirectory();
  Hive.init(appDir.path);
  registerHiveTypes();
  final Box<dynamic> userBox = await Hive.openBox<dynamic>('user_box');

  // It is safe to ignore this since we need them as long as the app is running
  // ignore: close_sinks
  final BehaviorSubject<dynamic> actions = BehaviorSubject<dynamic>();
  // ignore: close_sinks
  final BehaviorSubject<int> selectedMovie = BehaviorSubject<int>();

  // initialize epics
  final GoogleService googleService = FlutterGoogleService(google: GoogleSignIn());
  final FirebaseAuthService authService = FirebaseAuthService(firebaseAuth: FirebaseAuth.instance);
  final FirestoreDatabaseService databaseService = FirestoreDatabaseService(firestore: Firestore.instance);
  final HttpService httpService = FlutterHttpService(client: Client(), host: 'yts.lt');
  final AppEpics epics = AppEpics(
    authService: authService,
    httpService: httpService,
    databaseService: databaseService,
    googleService: googleService,
    userBox: userBox,
    selectedMovie: selectedMovie,
  );

  // initialize middleware
  final AppMiddleware appMiddleware = AppMiddleware(userBox: userBox);

  // initialize store
  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: AppState.initialState(),
    middleware: <Middleware<AppState>>[
      ...appMiddleware.middleware,
      LoggingMiddleware<AppState>.printer(
        logger: Logger('Redux Logger'),
        formatter: onlyLogActionFormatter,
      ),
      EpicMiddleware<AppState>(epics.epic),
      (_, dynamic action, NextDispatcher next) {
        next(action);
        actions.add(action);
      }
    ],
  );

  //
  store //
      .onChange
      .map((AppState it) => it.moviesState.selectedMovieId)
      .listen(selectedMovie.add);

  // start app
  runApp(YtsApp(store: store..dispatch(Bootstrap()), actions: actions));
}

class YtsApp extends StatelessWidget {
  const YtsApp({Key key, @required this.store, @required this.actions}) : super(key: key);

  final Store<AppState> store;
  final Observable<dynamic> actions;

  @override
  Widget build(BuildContext context) {
    return ActionInterceptor(
      actions: actions,
      child: StoreProvider<AppState>(
        store: store,
        child: MaterialApp(
          theme: ThemeData.dark().copyWith(
            accentColor: const Color(0xFF62B729),
          ),
          home: const Home(),
          routes: <String, WidgetBuilder>{
            AppRoutes.loginPage: (_) => const LoginPage(),
            AppRoutes.passwordPage: (_) => const PasswordPage(),
            AppRoutes.movieDetailsPage: (_) => const MovieDetailsPage(),
          },
        ),
      ),
    );
  }
}

class AppRoutes {
  static const String home = '/';
  static const String homePage = '/homePage';
  static const String movieDetailsPage = '/movieDetailsPage';
  static const String loginPage = '/loginPage';
  static const String passwordPage = '/passwordPage';
}
