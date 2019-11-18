// File created by
// Lung Razvan <long1eu>
// on 16/11/2019

import 'package:auth/src/data/index.dart';
import 'package:meta/meta.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:root/auth.dart';
import 'package:root/movies.dart';
import 'package:root/root.dart';
import 'package:rxdart/rxdart.dart';

class AuthEpic {
  const AuthEpic({@required AuthApi authApi})
      : assert(authApi != null, 'AuthApi should not be null.'),
        _authApi = authApi;

  final AuthApi _authApi;

  Epic<AuthState> get epic {
    return combineEpics<AuthState>(<Epic<AuthState>>[
      TypedEpic<AuthState, Bootstrap>(_bootstrap),
      TypedEpic<AuthState, Authenticate>(_authenticate),
      TypedEpic<AuthState, GetEmailInfo>(_getEmailInfo),
      TypedEpic<AuthState, SignOut>(_signOut),
    ]);
  }

  Stream<AppAction> _bootstrap(Stream<Bootstrap> actions, EpicStore<AuthState> store) {
    return Observable<Bootstrap>(actions) //
        .flatMap((Bootstrap action) => _authApi.authChange)
        .expand<AppAction>((User user) => <AppAction>[BootstrapSuccessful(user), if (user != null) GetMovies()])
        .onErrorReturnWith((dynamic error) => BootstrapError(error));
  }

  Stream<AuthAction> _authenticate(Stream<Authenticate> actions, EpicStore<AuthState> store) {
    return Observable<Authenticate>(actions) //
        .flatMap<AuthAction>((Authenticate action) =>
            Observable<User>.fromFuture(_authApi.login(action.type, store.state.registerInfo))
                .map<AuthAction>((User user) => AuthenticateSuccessful(user))
                .onErrorReturnWith((dynamic error) => AuthenticateError(error))
                .doOnData(action.response));
  }

  Stream<AuthAction> _getEmailInfo(Stream<GetEmailInfo> actions, EpicStore<AuthState> store) {
    return Observable<GetEmailInfo>(actions) //
        .debounceTime(const Duration(milliseconds: 500))
        .distinct()
        .switchMap((GetEmailInfo action) =>
            Observable<List<String>>.fromFuture(_authApi.fetchSignInMethodsForEmail(action.email))
                .map<AuthAction>((List<String> providers) => GetEmailInfoSuccessful(providers, action.email))
                .onErrorReturnWith((dynamic error) => GetEmailInfoError(error))
                .doOnData(action.response));
  }

  Stream<AuthAction> _signOut(Stream<SignOut> actions, EpicStore<AuthState> store) {
    return Observable<SignOut>(actions) //
        .flatMap((_) => Observable<void>.fromFuture(_authApi.signOut())
            .mapTo<AuthAction>(SignOutSuccessful())
            .onErrorReturnWith((dynamic error) => SignOutError(error)));
  }
}
