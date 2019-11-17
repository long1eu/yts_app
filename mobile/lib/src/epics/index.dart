// File created by
// Lung Razvan <long1eu>
// on 17/11/2019

import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:mobile/src/epics/flutter_epic.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:root/root.dart';

Epic<FlutterState> epic({@required Box<dynamic> userBox}) {
  return combineEpics<FlutterState>(<Epic<FlutterState>>[
    FlutterEpic(userBox: userBox).epic,
  ]);
}
