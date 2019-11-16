// File created by
// Lung Razvan <long1eu>
// on 16/11/2019

import 'package:auth/src/data/auth_api.dart';
import 'package:meta/meta.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:root/root.dart';

import 'auth_epic.dart';

Epic<AuthState> epic({@required AuthService authService}) {
  final AuthApi authApi = AuthApi(authService: authService);

  return combineEpics<AuthState>(<Epic<AuthState>>[
    AuthEpic(authApi: authApi).epic,
  ]);
}
