// File created by
// Lung Razvan <long1eu>
// on 16/11/2019

import 'package:meta/meta.dart';
import 'package:root/root.dart';
import 'package:rxdart/rxdart.dart';

class AuthApi {
  const AuthApi({@required AuthService authService})
      : assert(authService != null),
        _authService = authService;

  final AuthService _authService;

  Observable<User> get authChange {
    return Observable<User>(_authService.authStateChanged) //
        .distinct();
  }
}
