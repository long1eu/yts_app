import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:hive/hive.dart';
import 'package:http/http.dart';
import 'package:mobile/src/data/firebase_auth_service.dart';
import 'package:mobile/src/data/firestore_database_service.dart';
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

  // initialize epics
  final FirebaseAuthService authService = FirebaseAuthService(firebaseAuth: FirebaseAuth.instance);
  final FirestoreDatabaseService databaseService = FirestoreDatabaseService(firestore: Firestore.instance);
  final HttpService httpService = HttpService(client: Client(), host: 'yts.lt');
  final AppEpics epics = AppEpics(authService: authService, httpService: httpService, databaseService: databaseService);

  // initialize store
  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: AppState.initialState(),
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(epics.epic),
    ],
  );

  // start app
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
