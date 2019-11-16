// File created by
// Lung Razvan <long1eu>
// on 16/11/2019

import 'package:meta/meta.dart';
import 'package:movies/src/data/index.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:root/movies.dart';

class MoviesEpic {
  const MoviesEpic({@required YtsApi ytsApi})
      : assert(ytsApi != null, 'YtsApi should not be null.'),
        _ytsApi = ytsApi;

  final YtsApi _ytsApi;

  Epic<MoviesState> get epic {
    return combineEpics<MoviesState>(<Epic<MoviesState>>[]);
  }
}
