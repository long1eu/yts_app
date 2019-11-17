// File created by
// Lung Razvan <long1eu>
// on 17/11/2019

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:mobile/src/models/app_state.dart';
import 'package:redux/redux.dart';
import 'package:root/auth.dart';

class UserContainer extends StatelessWidget {
  const UserContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<User> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, User>(
      converter: (Store<AppState> store) => store.state.authState.user,
      builder: builder,
    );
  }
}
