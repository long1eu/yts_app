// File created by
// Lung Razvan <long1eu>
// on 16/11/2019

import 'package:meta/meta.dart';
import 'package:app_platform/src/data/index.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:root/root.dart';

import 'platform_epic.dart';

Epic<PlatformState> epic({@required DatabaseService databaseService}) {
  final CommentsApi commentsApi = CommentsApi(databaseService: databaseService);

  return combineEpics<PlatformState>(<Epic<PlatformState>>[
    PlatformEpic(commentsApi: commentsApi).epic,
  ]);
}
