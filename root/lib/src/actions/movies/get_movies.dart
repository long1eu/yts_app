// File created by
// Lung Razvan <long1eu>
// on 16/11/2019

library get_movies;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:root/src/actions/index.dart';
import 'package:root/src/models/index.dart';

import 'index.dart';

part 'get_movies.g.dart';

abstract class GetMovies //
    implements
        Built<GetMovies, GetMoviesBuilder>,
        MoviesActionStart,
        MoviesAction //
{
  factory GetMovies([void Function(GetMoviesBuilder b) updates]) = _$GetMovies;

  GetMovies._();
}

abstract class GetMoviesSuccessful //
    implements
        Built<GetMoviesSuccessful, GetMoviesSuccessfulBuilder>,
        MoviesActionDone,
        MoviesAction //
{
  factory GetMoviesSuccessful(List<Movie> movies) {
    return _$GetMoviesSuccessful((GetMoviesSuccessfulBuilder b) {
      b.movies = ListBuilder<Movie>(movies);
    });
  }

  GetMoviesSuccessful._();

  BuiltList<Movie> get movies;
}

abstract class GetMoviesError //
    implements
        Built<GetMoviesError, GetMoviesErrorBuilder>,
        MoviesAction,
        MoviesActionDone,
        ErrorAction //
{
  factory GetMoviesError(Object error) {
    return _$GetMoviesError((GetMoviesErrorBuilder b) => b.error = error);
  }

  GetMoviesError._();

  @override
  Object get error;
}
