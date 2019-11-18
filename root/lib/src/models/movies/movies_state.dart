// File created by
// Lung Razvan <long1eu>
// on 16/11/2019

library movies_state;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'index.dart';
import 'serializers.dart';

part 'movies_state.g.dart';

abstract class MoviesState implements Built<MoviesState, MoviesStateBuilder> {
  factory MoviesState([void Function(MoviesStateBuilder b) updates]) = _$MoviesState;

  factory MoviesState.initialState() {
    return _$MoviesState((MoviesStateBuilder b) {
      b
        ..movies = MapBuilder<int, Movie>()
        ..requestState = RequestState.initialState().toBuilder();
    });
  }

  factory MoviesState.fromJson(Map<dynamic, dynamic> json) => serializers.deserializeWith(serializer, json);

  MoviesState._();

  @nullable
  int get selectedMovieId;

  BuiltMap<int, Movie> get movies;

  RequestState get requestState;

  @memoized
  Movie get selectedMovie => selectedMovieId == null ? null : movies[selectedMovieId];

  @memoized
  List<Movie> get moviesList => movies.values.toList()..sort();

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this);

  static Serializer<MoviesState> get serializer => _$moviesStateSerializer;
}
