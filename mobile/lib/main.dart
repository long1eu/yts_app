import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hive/hive.dart';
import 'package:http/http.dart';
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
import 'package:mobile/src/reducer/reducer.dart';
import 'package:path_provider/path_provider.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:root/root.dart' hide registerHiveTypes;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // initialize Hive
  final Directory appDir = await getApplicationDocumentsDirectory();
  Hive.init(appDir.path);
  registerHiveTypes();
  final Box<dynamic> userBox = await Hive.openBox<dynamic>('user_box');

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
  );

  // initialize middleware
  final AppMiddleware appMiddleware = AppMiddleware(userBox: userBox);

  // initialize store
  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: AppState.initialState(),
    middleware: <Middleware<AppState>>[
      ...appMiddleware.middleware,
      EpicMiddleware<AppState>(epics.epic),
    ],
  );

  // start app
  runApp(YtsApp(store: store..dispatch(Bootstrap())));
}

class YtsApp extends StatelessWidget {
  const YtsApp({Key key, @required this.store}) : super(key: key);

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        theme: ThemeData.dark().copyWith(
          accentColor: const Color(0xFF62B729),
        ),
        home: const Home(),
        routes: <String, WidgetBuilder>{
          AppRoutes.loginPage: (_) => const LoginPage(),
          AppRoutes.passwordPage: (_) => const PasswordPage(),
        },
      ),
    );
  }
}

class AppRoutes {
  static const String home = '/';
  static const String homePage = '/homePage';
  static const String loginPage = '/loginPage';
  static const String passwordPage = '/passwordPage';
}
