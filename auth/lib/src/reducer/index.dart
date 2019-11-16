// File created by
// Lung Razvan <long1eu>
// on 16/11/2019

import 'package:redux/redux.dart';
import 'package:root/auth.dart';

final Reducer<AuthState> reducer = combineReducers(<Reducer<AuthState>>[
  TypedReducer<AuthState, BootstrapSuccessful>(_bootstrapSuccessful),
]);

AuthState _bootstrapSuccessful(AuthState state, BootstrapSuccessful action) {
  return state.rebuild((AuthStateBuilder b) => b.user = action.user?.toBuilder());
}
