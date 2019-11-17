// File created by
// Lung Razvan <long1eu>
// on 17/11/2019
import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:redux/redux.dart';
import 'package:root/flutter.dart';

class FlutterMiddleware {
  const FlutterMiddleware({@required Box<dynamic> userBox})
      : assert(userBox != null),
        _userBox = userBox;

  final Box<dynamic> _userBox;

  List<Middleware<FlutterState>> get middleware {
    return <Middleware<FlutterState>>[
      TypedMiddleware<FlutterState, SetImageGrid>(_setImageGrid),
    ];
  }

  void _setImageGrid(Store<FlutterState> store, SetImageGrid action, NextDispatcher next) {
    next(action);
    _userBox.put('user_color', jsonEncode(action.image.json));
  }
}
