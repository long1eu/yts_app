// File created by
// Lung Razvan <long1eu>
// on 16/11/2019

library listen_for_comments;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:root/platform.dart';
import 'package:root/root.dart';
import 'package:root/src/actions/index.dart';

import 'index.dart';

part 'listen_for_comments.g.dart';

abstract class ListenForComments //
    implements
        Built<ListenForComments, ListenForCommentsBuilder>,
        PlatformAction //
{
  factory ListenForComments([void Function(ListenForCommentsBuilder b) updates]) = _$ListenForComments;

  ListenForComments._();
}

abstract class StopListeningForComments //
    implements
        Built<StopListeningForComments, StopListeningForCommentsBuilder>,
        PlatformAction //
{
  factory StopListeningForComments() = _$StopListeningForComments;

  StopListeningForComments._();
}

abstract class OnCommentsEvent //
    with
        ListenEvent<Comment>
    implements
        Built<OnCommentsEvent, OnCommentsEventBuilder>,
        PlatformAction //
{
  factory OnCommentsEvent(List<Comment> messages) {
    return _$OnCommentsEvent((OnCommentsEventBuilder b) {
      b.comments = ListBuilder<Comment>(messages);
    });
  }

  OnCommentsEvent._();

  BuiltList<Comment> get comments;

  int get movieId;

  @override
  @memoized
  Map<ObjectChangeType, List<Comment>> get typedData => super.typedData;
}

abstract class ListenForCommentsError //
    implements
        Built<ListenForCommentsError, ListenForCommentsErrorBuilder>,
        PlatformAction,
        ErrorAction //
{
  factory ListenForCommentsError(Object error) {
    return _$ListenForCommentsError((ListenForCommentsErrorBuilder b) => b.error = error);
  }

  ListenForCommentsError._();

  @override
  Object get error;
}
