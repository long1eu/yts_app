// File created by
// Lung Razvan <long1eu>
// on 17/11/2019

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:root/auth.dart';
import 'package:root/root.dart';
import 'package:rxdart/rxdart.dart';

class FlutterEpic {
  const FlutterEpic({@required Box<dynamic> userBox})
      : assert(userBox != null),
        _userBox = userBox;

  final Box<dynamic> _userBox;

  Epic<FlutterState> get epic {
    return combineEpics<FlutterState>(<Epic<FlutterState>>[
      TypedEpic<FlutterState, BootstrapSuccessful>(_bootstrapSuccessful),
    ]);
  }

  Stream<AppAction> _bootstrapSuccessful(Stream<BootstrapSuccessful> actions, EpicStore<FlutterState> store) {
    return Observable<BootstrapSuccessful>(actions) //
        .map<String>((BootstrapSuccessful action) => _userBox.get('user_color') ?? '{}')
        .map((String data) => Map<String, dynamic>.from(jsonDecode(data)))
        .map((Map<String, dynamic> json) => json.isEmpty
            ? ImageGrid(color: (Colors.accents.toList()..shuffle()).first.value)
            : ImageGrid.fromJson(json))
        .expand((ImageGrid image) => <AppAction>[SetImageGrid(image), UpdateRegisterData(photo: image.encode)]);
  }
}
