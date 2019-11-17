// File created by
// Lung Razvan <long1eu>
// on 17/11/2019

import 'package:flutter/material.dart';
import 'package:mobile/src/container/user_container.dart';
import 'package:mobile/src/presentation/login/login_page.dart';
import 'package:root/auth.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, User user) {
        return user == null ? const LoginPage() : const HomePage();
      },
    );
  }
}
