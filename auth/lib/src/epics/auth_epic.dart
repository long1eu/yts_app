// File created by
// Lung Razvan <long1eu>
// on 16/11/2019

import 'package:auth/src/data/index.dart';
import 'package:meta/meta.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:root/auth.dart';
import 'package:rxdart/rxdart.dart';

class AuthEpic {
  const AuthEpic({@required AuthApi authApi})
      : assert(authApi != null, 'AuthApi should not be null.'),
        _authApi = authApi;

  final AuthApi _authApi;

  Epic<AuthState> get epic {
    return combineEpics<AuthState>(<Epic<AuthState>>[
      TypedEpic<AuthState, Bootstrap>(_bootstrap),
    ]);
  }

  Stream<AuthAction> _bootstrap(Stream<Bootstrap> actions, EpicStore<AuthState> store) {
    return Observable<Bootstrap>(actions) //
        .flatMap((Bootstrap action) => _authApi.authChange)
        .map<AuthAction>((User user) => BootstrapSuccessful(user))
        .onErrorReturnWith((dynamic error) => BootstrapError(error));
  }
}
