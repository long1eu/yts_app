// File created by
// Lung Razvan <long1eu>
// on 17/11/2019

import 'package:google_sign_in/google_sign_in.dart';
import 'package:meta/meta.dart';
import 'package:root/root.dart';

class FlutterGoogleService extends GoogleService {
  FlutterGoogleService({@required GoogleSignIn google})
      : assert(google != null),
        _google = google;

  final GoogleSignIn _google;

  @override
  Future<GoogleAuthentication> get authentication async {
    if (_google.currentUser == null) {
      return null;
    }

    final GoogleSignInAuthentication authentication = await _google.currentUser.authentication;
    return GoogleAuthentication(
      idToken: authentication.idToken,
      accessToken: authentication.accessToken,
      account: currentUser,
    );
  }

  @override
  GoogleAccount get currentUser {
    final GoogleSignInAccount user = _google.currentUser;
    if (user == null) {
      return null;
    }

    return GoogleAccount(
      displayName: user.displayName,
      id: user.id,
      photoUrl: user.photoUrl,
      email: user.email,
    );
  }

  @override
  Future<GoogleAccount> signIn() async {
    final GoogleSignInAccount user = await _google.signIn();
    if (user == null) {
      return null;
    }

    return GoogleAccount(
      displayName: user.displayName,
      id: user.id,
      photoUrl: user.photoUrl,
      email: user.email,
    );
  }

  @override
  Future<void> signOut() => _google.signOut();
}
