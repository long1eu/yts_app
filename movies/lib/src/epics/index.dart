// File created by
// Lung Razvan <long1eu>
// on 16/11/2019

import 'package:meta/meta.dart';
import 'package:movies/src/data/index.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:root/movies.dart';
import 'package:root/root.dart';

import 'yts_epic.dart';

Epic<MoviesState> epic({@required HttpService httpService}) {
  final YtsApi ytsApi = YtsApi(httpService: httpService);

  return combineEpics<MoviesState>(<Epic<MoviesState>>[
    MoviesEpic(ytsApi: ytsApi).epic,
  ]);
}
