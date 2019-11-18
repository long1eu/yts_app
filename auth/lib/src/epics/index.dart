// File created by
// Lung Razvan <long1eu>
// on 16/11/2019

import 'package:auth/auth.dart';
import 'package:auth/src/data/auth_api.dart';
import 'package:auth/src/epics/user_epic.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:root/root.dart';

import 'auth_epic.dart';

Epic<AuthState> epic({
  @required AuthService authService,
  @required GoogleService googleService,
  @required Box<dynamic> userBox,
  @required DatabaseService databaseService,
}) {
  final AuthApi authApi = AuthApi(
    authService: authService,
    googleService: googleService,
    userBox: userBox,
    databaseService: databaseService,
  );

  final UserApi userApi = UserApi(databaseService: databaseService);

  return combineEpics<AuthState>(<Epic<AuthState>>[
    AuthEpic(authApi: authApi).epic,
    UserEpic(userApi: userApi).epic,
  ]);
}
