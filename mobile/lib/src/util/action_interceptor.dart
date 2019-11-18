// File created by
// Lung Razvan <long1eu>
// on 2019-05-31

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class ActionInterceptor extends InheritedWidget {
  const ActionInterceptor({Key key, @required Widget child, @required Observable<dynamic> actions})
      : _actions = actions,
        assert(child != null),
        super(key: key, child: child);

  static ActionInterceptor of(BuildContext context) {
    final ActionInterceptor object = context.inheritFromWidgetOfExactType(ActionInterceptor);
    return object;
  }

  final Observable<dynamic> _actions;

  Observable<T> whereType<T>() => _actions.whereType<T>();

  @override
  bool updateShouldNotify(ActionInterceptor oldWidget) => false;
}
