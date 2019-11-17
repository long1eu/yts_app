// File created by
// Lung Razvan <long1eu>
// on 16/11/2019

import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';
import 'package:root/root.dart' as root;

class FirebaseAuthService implements root.AuthService {
  FirebaseAuthService({@required FirebaseAuth firebaseAuth})
      : assert(firebaseAuth != null),
        _firebaseAuth = firebaseAuth;

  final FirebaseAuth _firebaseAuth;

  @override
  Stream<root.User> get authStateChanged => null;

  @override
  Future<root.User> createUserWithEmailAndPassword(root.RegisterInfo info) async {
    final AuthResult fbUser =
        await _firebaseAuth.createUserWithEmailAndPassword(email: info.email, password: info.password);

    final UserUpdateInfo updateInfo = UserUpdateInfo()
      ..displayName = info.displayName
      ..photoUrl = info.photo;
    await fbUser.user.updateProfile(updateInfo);

    return _toAppUser(await _firebaseAuth.currentUser());
  }

  @override
  Future<List<String>> fetchSignInMethodsForEmail(String email) {
    return _firebaseAuth.fetchSignInMethodsForEmail(email: email);
  }

  @override
  Future<root.User> signInWithCredential(root.AuthCredential credential) async {
    AuthCredential fbCredential;
    if (credential.type == root.CredentialType.email) {
      fbCredential = EmailAuthProvider.getCredential(
        email: credential.data['email'],
        password: credential.data['password'],
      );
    } else if (credential.type == root.CredentialType.google) {
      fbCredential = GoogleAuthProvider.getCredential(
        idToken: credential.data['idToken'],
        accessToken: credential.data['accessToken'],
      );
    }

    final AuthResult fbUser = await _firebaseAuth.signInWithCredential(fbCredential);
    return _toAppUser(fbUser.user);
  }

  @override
  Future<void> signOut() => _firebaseAuth.signOut();

  root.User _toAppUser(FirebaseUser fbUser) {
    return root.User((root.UserBuilder b) {
      b
        ..uid = fbUser.uid
        ..email = fbUser.email
        ..photo = fbUser.photoUrl
        ..displayName = fbUser.displayName;
    });
  }
}
