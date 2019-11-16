// File created by
// Lung Razvan <long1eu>
// on 16/11/2019

import 'package:meta/meta.dart';
import 'package:root/src/models/auth/index.dart';

abstract class AuthService {
  const AuthService();

  Stream<User> get authStateChanged;

  Future<User> createUserWithEmailAndPassword(RegisterInfo info);

  Future<User> signInWithCredential(AuthCredential credential);

  Future<void> signOut();

  Future<List<String>> fetchSignInMethodsForEmail(String email);
}

class AuthCredential {
  const AuthCredential._(this.type, this.data);

  factory AuthCredential.email(RegisterInfo info) {
    return AuthCredential._(CredentialType.email, <String, String>{'email': info.email, 'password': info.password});
  }

  factory AuthCredential.google(GoogleAuthentication auth) {
    return AuthCredential._(
        CredentialType.google, <String, String>{'idToken': auth.idToken, 'accessToken': auth.accessToken});
  }

  final CredentialType type;
  final Map<String, String> data;
}

class CredentialType {
  const CredentialType._(this._i, this.providerId);

  final int _i;
  final String providerId;

  static const CredentialType email = CredentialType._(0, 'password');
  static const CredentialType google = CredentialType._(1, 'google.com');

  static const List<CredentialType> values = <CredentialType>[
    email,
    google,
  ];

  static const List<String> _names = <String>[
    'email',
    'google',
  ];

  @override
  String toString() => 'CredentialType.${_names[_i]}';
}

abstract class GoogleService {
  const GoogleService();

  GoogleAccount get currentUser;

  Future<GoogleAuthentication> get authentication;

  Future<GoogleAccount> signIn();

  Future<void> signOut();
}

class GoogleAccount {
  const GoogleAccount({
    @required this.displayName,
    @required this.email,
    @required this.id,
    @required this.photoUrl,
  });

  final String displayName;
  final String email;
  final String id;
  final String photoUrl;
}

class GoogleAuthentication {
  const GoogleAuthentication({
    @required this.idToken,
    @required this.accessToken,
    @required this.account,
  });

  final String idToken;
  final String accessToken;
  final GoogleAccount account;
}
