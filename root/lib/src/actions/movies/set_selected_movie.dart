// File created by
// Lung Razvan <long1eu>
// on 16/11/2019

library set_selected_movie;

import 'package:built_value/built_value.dart';

import 'index.dart';

part 'set_selected_movie.g.dart';

abstract class SetSelectedMovieId //
    implements
        Built<SetSelectedMovieId, SetSelectedMovieIdBuilder>,
        MoviesAction //
{
  factory SetSelectedMovieId(int movieId) {
    return _$SetSelectedMovieId((SetSelectedMovieIdBuilder b) => b.movieId = movieId);
  }

  SetSelectedMovieId._();

  int get movieId;
}
