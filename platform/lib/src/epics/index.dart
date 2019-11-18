// File created by
// Lung Razvan <long1eu>
// on 16/11/2019

import 'package:app_platform/src/data/index.dart';
import 'package:meta/meta.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:root/root.dart';
import 'package:rxdart/rxdart.dart';

import 'platform_epic.dart';

Epic<PlatformState> epic({@required DatabaseService databaseService, @required BehaviorSubject<int> selectedMovie}) {
  final CommentsApi commentsApi = CommentsApi(databaseService: databaseService);

  return combineEpics<PlatformState>(<Epic<PlatformState>>[
    PlatformEpic(commentsApi: commentsApi, selectedMovie: selectedMovie).epic,
  ]);
}
