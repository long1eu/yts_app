// File created by
// Lung Razvan <long1eu>
// on 16/11/2019

import 'package:auth/auth.dart';
import 'package:meta/meta.dart';
import 'package:root/root.dart';
import 'package:rxdart/rxdart.dart';

class AuthApi {
  AuthApi({
    @required AuthService authService,
    GoogleService googleService,
    GoogleProvider googleProvider,
  })  : assert(authService != null),
        _authService = authService,
        _googleProvider = googleProvider ?? GoogleProvider(googleService: googleService);

  final AuthService _authService;
  final GoogleProvider _googleProvider;

  Observable<User> get authChange {
    return Observable<User>(_authService.authStateChanged) //
        .distinct();
  }

  Future<User> login(CredentialType type, RegisterInfo info) async {
    Future<User> task;
    if (type == CredentialType.google) {
      task = _signInWithGoogle();
    } else if (type == CredentialType.email) {
      task = _singInWithEmail(info);
    } else {
      return Future<User>.error(UnimplementedError('Unknown type $type'));
    }

    final User user = await task;
    await _ensureUserRecord(user);
    return user;
  }

  Future<User> _signInWithGoogle() async {
    final GoogleAuthentication auth = await _googleProvider.getCredential();
    return _authService.signInWithCredential(AuthCredential.google(auth));
  }

  Future<User> _singInWithEmail(RegisterInfo info) {
    if (info.isRegister) {
      return _authService.createUserWithEmailAndPassword(info);
    } else {
      return _authService.signInWithCredential(AuthCredential.email(info));
    }
  }

  Future<List<String>> fetchSignInMethodsForEmail(String email) {
    return _authService.fetchSignInMethodsForEmail(email);
  }

  Future<void> _ensureUserRecord(User user) {}

  Future<void> signOut() => _authService.signOut();
}
