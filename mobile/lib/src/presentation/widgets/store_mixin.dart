// File created by
// Lung Razvan <long1eu>
// on 17/11/2019

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:mobile/src/models/app_state.dart';
import 'package:redux/redux.dart';

mixin StoreMixin<T extends StatefulWidget> on State<T> {
  Store<AppState> store;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    store ??= StoreProvider.of<AppState>(context);
  }

  void dispatch(dynamic action) {
    store.dispatch(action);
  }
}
