// File created by
// Lung Razvan <long1eu>
// on 16/11/2019

import 'package:app_platform/app_platform.dart' as platform;
import 'package:auth/auth.dart' as auth;
import 'package:flutter/foundation.dart';
import 'package:mobile/src/models/app_state.dart';
import 'package:movies/movies.dart' as movies;
import 'package:redux/redux.dart';
import 'package:root/root.dart';

import 'flutter_reducer.dart' as flutter;

Reducer<AppState> reducer = combineReducers<AppState>(<Reducer<AppState>>[
  _moduleReducers,
]);

AppState _moduleReducers(AppState state, dynamic action) {
  if (!kReleaseMode) {
    if (action is! AppAction) {
      throw StateError('This action is not an AppAction. ${action.runtimeType}\n$action');
    }

    if (action is ErrorAction) {
      final StackTrace stackTrace = () {
        try {
          final dynamic error = action.error;
          return error.stackTrace;
        } catch (e) {
          return StackTrace.current;
        }
      }();

      print('${action.runtimeType} ${action.error} ${stackTrace == null ? '' : '\n${stackTrace.toString()}'}');
    }
  }

  return state.rebuild((AppStateBuilder b) {
    b
      ..authState = auth.reducer(state.authState, action).toBuilder()
      ..moviesState = movies.reducer(state.moviesState, action).toBuilder()
      ..platformState = platform.reducer(state.platformState, action).toBuilder()
      ..flutterState = flutter.reducer(state.flutterState, action).toBuilder();
  });
}
