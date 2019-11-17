// File created by
// Lung Razvan <long1eu>
// on 17/11/2019

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:mobile/src/models/app_state.dart';
import 'package:redux/redux.dart';
import 'package:root/auth.dart';

class RegisterInfoContainer extends StatelessWidget {
  const RegisterInfoContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<RegisterInfo> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, RegisterInfo>(
      converter: (Store<AppState> store) => store.state.authState.registerInfo,
      builder: builder,
    );
  }
}
