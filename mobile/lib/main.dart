import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:hive/hive.dart';
import 'package:mobile/src/data/auth_service.dart';
import 'package:mobile/src/data/database_service.dart';
import 'package:mobile/src/data/http_service.dart';
import 'package:mobile/src/epics/app_epics.dart';
import 'package:mobile/src/models/app_state.dart';
import 'package:mobile/src/models/serializers.dart';
import 'package:mobile/src/reducer/reducer.dart';
import 'package:path_provider/path_provider.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // initialize Hive
  final Directory appDir = await getApplicationDocumentsDirectory();
  Hive.init(appDir.path);
  registerHiveTypes();

  const AuthService authService = AuthService();
  const HttpService httpService = HttpService();
  const DatabaseService databaseService = DatabaseService();

  final AppEpics epics = AppEpics(authService: authService, httpService: httpService, databaseService: databaseService);

  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: AppState.initialState(),
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(epics.epic),
    ],
  );

  runApp(YtsApp(store: store));
}

class YtsApp extends StatelessWidget {
  const YtsApp({Key key, @required this.store}) : super(key: key);

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(),
    );
  }
}
