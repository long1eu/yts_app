// File created by
// Lung Razvan <long1eu>
// on 18/11/2019

library add_like;

import 'package:built_value/built_value.dart';
import 'package:root/src/actions/index.dart';

import 'index.dart';

part 'add_like.g.dart';

abstract class AddLike //
    implements
        Built<AddLike, AddLikeBuilder>,
        AuthAction //
{
  factory AddLike(int movieId) {
    return _$AddLike((AddLikeBuilder b) => b.movieId = movieId);
  }

  AddLike._();

  int get movieId;
}

abstract class AddLikeSuccessful //
    implements
        Built<AddLikeSuccessful, AddLikeSuccessfulBuilder>,
        AuthAction //
{
  factory AddLikeSuccessful([void Function(AddLikeSuccessfulBuilder b) updates]) = _$AddLikeSuccessful;

  AddLikeSuccessful._();
}

abstract class AddLikeError //
    implements
        Built<AddLikeError, AddLikeErrorBuilder>,
        AuthAction,
        ErrorAction //
{
  factory AddLikeError(Object error) {
    return _$AddLikeError((AddLikeErrorBuilder b) => b.error = error);
  }

  AddLikeError._();

  @override
  Object get error;

  int get movieId;
}
