// File created by
// Lung Razvan <long1eu>
// on 16/11/2019

import 'package:auth/auth.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:root/root.dart';
import 'package:rxdart/rxdart.dart';

class AuthApi {
  AuthApi({
    @required AuthService authService,
    @required Box<dynamic> userBox,
    @required DatabaseService databaseService,
    GoogleService googleService,
    GoogleProvider googleProvider,
  })  : assert(authService != null),
        assert(userBox != null),
        assert(databaseService != null),
        _authService = authService,
        _googleProvider = googleProvider ?? GoogleProvider(googleService: googleService),
        _userBox = userBox,
        _databaseService = databaseService;

  final AuthService _authService;
  final DatabaseService _databaseService;
  final GoogleProvider _googleProvider;
  final Box<dynamic> _userBox;

  Observable<User> get authChange {
    return Observable<User>(_authService.authStateChanged) //
        .startWith(_userBox.get('user'))
        .asyncMap(_ensureUserRecord)
        .distinct()
        .doOnData((User user) => _userBox.put('user', user));
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
    return _ensureUserRecord(user);
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

  Future<void> signOut() => _authService.signOut();

  Future<User> _ensureUserRecord(User user) async {
    final Map<String, dynamic> json = await _databaseService.get('users/${user.uid}');
    if (json == null) {
      await _databaseService.insert('users/${user.uid}', user.json);
      return user;
    }

    return User.fromJson(json);
  }
}
