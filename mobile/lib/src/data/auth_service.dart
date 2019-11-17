// File created by
// Lung Razvan <long1eu>
// on 16/11/2019

import 'package:auth/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:meta/meta.dart';
import 'package:root/root.dart' as root show AuthCredential;
import 'package:root/root.dart' hide AuthCredential;

class FirebaseAuthService implements AuthService {
  FirebaseAuthService({@required FirebaseAuth firebaseAuth})
      : assert(firebaseAuth != null),
        _firebaseAuth = firebaseAuth;

  final FirebaseAuth _firebaseAuth;

  @override
  Stream<User> get authStateChanged => _firebaseAuth.onAuthStateChanged.map(_toAppUser);

  @override
  Future<User> createUserWithEmailAndPassword(RegisterInfo info) async {
    try {
      final AuthResult fbUser =
          await _firebaseAuth.createUserWithEmailAndPassword(email: info.email, password: info.password);

      final UserUpdateInfo updateInfo = UserUpdateInfo()
        ..displayName = info.displayName
        ..photoUrl = info.photo;
      await fbUser.user.updateProfile(updateInfo);

      return _toAppUser(await _firebaseAuth.currentUser());
    } on PlatformException catch (e) {
      return Future<User>.error(await _getError(e, info.email));
    }
  }

  @override
  Future<List<String>> fetchSignInMethodsForEmail(String email) {
    return _firebaseAuth.fetchSignInMethodsForEmail(email: email);
  }

  @override
  Future<User> signInWithCredential(root.AuthCredential credential) async {
    String email;
    AuthCredential fbCredential;
    if (credential.type == CredentialType.email) {
      email = credential.data['email'];
      fbCredential = EmailAuthProvider.getCredential(
        email: email,
        password: credential.data['password'],
      );
    } else if (credential.type == CredentialType.google) {
      email = GoogleSignIn().currentUser?.email;
      fbCredential = GoogleAuthProvider.getCredential(
        idToken: credential.data['idToken'],
        accessToken: credential.data['accessToken'],
      );
    }

    try {
      final AuthResult fbUser = await _firebaseAuth.signInWithCredential(fbCredential);
      return _toAppUser(fbUser.user);
    } on PlatformException catch (e) {
      return Future<User>.error(await _getError(e, email));
    }
  }

  @override
  Future<void> signOut() => _firebaseAuth.signOut();

  User _toAppUser(FirebaseUser fbUser) {
    return fbUser == null
        ? null
        : User((UserBuilder b) {
            b
              ..uid = fbUser.uid
              ..email = fbUser.email
              ..photo = fbUser.photoUrl
              ..displayName = fbUser.displayName;
          });
  }

  Future<ApiError> _getError(PlatformException error, String email) async {
    switch (error.code) {
      case 'ERROR_WEAK_PASSWORD':
        return ErrorWeakPassword(error);
      case 'ERROR_INVALID_CREDENTIAL':
        return ErrorInvalidCredential(error);
      case 'ERROR_EMAIL_ALREADY_IN_USE':
        final List<String> providers = await _firebaseAuth.fetchSignInMethodsForEmail(email: email);
        return ErrorEmailAlreadyInUse(providers, error);
      case 'ERROR_CREDENTIAL_ALREADY_IN_USE':
        return ErrorCredentialAlreadyInUse(error);
      case 'ERROR_USER_DISABLED':
        return ErrorUserDisabled(error);
      case 'ERROR_REQUIRES_RECENT_LOGIN':
        return ErrorRequiresRecentLogin(error);
      case 'ERROR_PROVIDER_ALREADY_LINKED':
        return ErrorProviderAlreadyLinked(error);
      case 'ERROR_OPERATION_NOT_ALLOWED':
        return ErrorOperationNotAllowed(error);
      case 'ERROR_INVALID_ACTION_CODE':
        return ErrorInvalidActionCode(error);
      case 'ERROR_INVALID_EMAIL':
        return ErrorInvalidEmail(error);
      case 'ERROR_TOO_MANY_REQUESTS':
        return ErrorTooManyRequests(error);
      case 'ERROR_WRONG_PASSWORD':
        return ErrorWrongPassword(error);
    }

    throw error;
  }
}
