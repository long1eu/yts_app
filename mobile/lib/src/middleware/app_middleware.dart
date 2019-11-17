// File created by
// Lung Razvan <long1eu>
// on 17/11/2019

import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:mobile/src/middleware/flutter_middleware.dart';
import 'package:mobile/src/models/app_state.dart';
import 'package:redux/redux.dart';
import 'package:root/root.dart';

class AppMiddleware {
  AppMiddleware({@required Box<dynamic> userBox})
      : assert(userBox != null),
        _flutterMiddleware = FlutterMiddleware(userBox: userBox).middleware;

  final List<Middleware<FlutterState>> _flutterMiddleware;

  List<Middleware<AppState>> get middleware {
    return <Middleware<AppState>>[
      ...TypedStoreMiddleware<AppState, FlutterState>(_flutterMiddleware, (AppState state) => state.flutterState)
          .middleware,
    ];
  }
}
