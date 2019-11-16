// File created by
// Lung Razvan <long1eu>
// on 16/11/2019

import 'package:meta/meta.dart';
import 'package:root/root.dart';

import 'errors.dart';

class GoogleProvider {
  const GoogleProvider({@required GoogleService googleService})
      : assert(googleService != null),
        _googleService = googleService;

  final GoogleService _googleService;

  Future<GoogleAuthentication> getCredential() async {
    final GoogleAccount googleUser = await _googleService.signIn() ?? _googleService.currentUser;

    if (googleUser == null) {
      throw AuthCancelledByUser();
    }

    return _googleService.authentication;
  }
}
