// File created by
// Lung Razvan <long1eu>
// on 16/11/2019

import 'package:app_platform/app_platform.dart' as platform;
import 'package:auth/auth.dart' as auth;
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:mobile/src/models/app_state.dart';
import 'package:movies/movies.dart' as movies;
import 'package:redux_epics/redux_epics.dart';
import 'package:root/root.dart';

import 'index.dart' as flutter;

class AppEpics {
  AppEpics({
    @required AuthService authService,
    @required HttpService httpService,
    @required DatabaseService databaseService,
    @required GoogleService googleService,
    @required Box<dynamic> userBox,
  })  : assert(authService != null),
        assert(googleService != null),
        assert(httpService != null),
        assert(databaseService != null),
        _authEpic = auth.epic(authService: authService, googleService: googleService, userBox: userBox),
        _moviesEpic = movies.epic(httpService: httpService),
        _platformEpic = platform.epic(databaseService: databaseService),
        _flutterEpic = flutter.epic(userBox: userBox);

  final Epic<AuthState> _authEpic;
  final Epic<MoviesState> _moviesEpic;
  final Epic<PlatformState> _platformEpic;
  final Epic<FlutterState> _flutterEpic;

  Epic<AppState> get epic {
    return combineEpics<AppState>(<Epic<AppState>>[
      TypedStoreEpic<AppState, AuthState>(epic: _authEpic, converter: (AppState state) => state.authState),
      TypedStoreEpic<AppState, MoviesState>(epic: _moviesEpic, converter: (AppState state) => state.moviesState),
      TypedStoreEpic<AppState, PlatformState>(epic: _platformEpic, converter: (AppState state) => state.platformState),
      TypedStoreEpic<AppState, FlutterState>(epic: _flutterEpic, converter: (AppState state) => state.flutterState),
    ]);
  }
}
