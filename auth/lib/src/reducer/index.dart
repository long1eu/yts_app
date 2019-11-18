// File created by
// Lung Razvan <long1eu>
// on 16/11/2019

import 'package:redux/redux.dart';
import 'package:root/auth.dart';

final Reducer<AuthState> reducer = combineReducers(<Reducer<AuthState>>[
  TypedReducer<AuthState, BootstrapSuccessful>(_bootstrapSuccessful),
  TypedReducer<AuthState, GetEmailInfoSuccessful>(_getEmailInfoSuccessful),
  TypedReducer<AuthState, UpdateRegisterData>(_updateRegisterData),
  TypedReducer<AuthState, AddLike>(_addLike),
  TypedReducer<AuthState, AddLikeError>(_addLikeError),
]);

AuthState _bootstrapSuccessful(AuthState state, BootstrapSuccessful action) {
  return state.rebuild((AuthStateBuilder b) => b.user = action.user?.toBuilder());
}

AuthState _getEmailInfoSuccessful(AuthState state, GetEmailInfoSuccessful action) {
  return state.rebuild((AuthStateBuilder b) {
    b.registerInfo = state.registerInfo.rebuild((RegisterInfoBuilder b) {
      b
        ..email = action.email
        ..providers = action.providers.toBuilder();
    }).toBuilder();
  });
}

AuthState _updateRegisterData(AuthState state, UpdateRegisterData action) {
  return state.rebuild((AuthStateBuilder b) {
    b.registerInfo = state.registerInfo.rebuild((RegisterInfoBuilder b) {
      b
        ..displayName = action.displayName ?? b.displayName
        ..password = action.password ?? b.password
        ..photo = action.photo ?? b.photo;
    }).toBuilder();
  });
}

AuthState _addLike(AuthState state, AddLike action) {
  return state.rebuild((AuthStateBuilder b) {
    b.user.update((UserBuilder b) {
      b.likes.add(action.movieId);
    });
  });
}

AuthState _addLikeError(AuthState state, AddLikeError action) {
  return state.rebuild((AuthStateBuilder b) {
    b.user.update((UserBuilder b) {
      b.likes.remove(action.movieId);
    });
  });
}
