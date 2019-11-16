// File created by
// Lung Razvan <long1eu>
// on 16/11/2019

import 'package:app_platform/app_platform.dart' as platform;
import 'package:auth/auth.dart' as auth;
import 'package:mobile/src/models/app_state.dart';
import 'package:movies/movies.dart' as movies;
import 'package:redux/redux.dart';
import 'package:root/root.dart';

Reducer<AppState> reducer = combineReducers<AppState>(<Reducer<AppState>>[
  _moduleReducers,
]);

AppState _moduleReducers(AppState state, dynamic action) {
  if (action is! AppAction) {
    throw StateError('This actions is not an AppAction. ${action.runtimeType}\n$action');
  }

  return state.rebuild((AppStateBuilder b) {
    b
      ..authState = auth.reducer(state.authState, action).toBuilder()
      ..moviesState = movies.reducer(state.moviesState, action).toBuilder()
      ..platformState = platform.reducer(state.platformState, action).toBuilder();
  });
}
