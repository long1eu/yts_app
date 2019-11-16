// File created by
// Lung Razvan <long1eu>
// on 16/11/2019

library send_comment;

import 'package:built_value/built_value.dart';
import 'package:root/platform.dart';
import 'package:root/src/actions/index.dart';

import 'index.dart';

part 'send_comment.g.dart';

abstract class SendCommentAction {
  Comment get comment;
}

abstract class SendComment //
    implements
        Built<SendComment, SendCommentBuilder>,
        SendCommentAction,
        PlatformAction //
{
  factory SendComment(Comment comment) {
    assert(comment.status == SendingStatus.sending);
    return _$SendComment((SendCommentBuilder b) => b.comment = comment.toBuilder());
  }

  SendComment._();

  @override
  Comment get comment;
}

abstract class SendCommentSuccessful //
    implements
        Built<SendCommentSuccessful, SendCommentSuccessfulBuilder>,
        SendCommentAction,
        PlatformAction //
{
  factory SendCommentSuccessful(Comment comment) {
    assert(comment.status == SendingStatus.server);
    return _$SendCommentSuccessful((SendCommentSuccessfulBuilder b) {
      b.comment = comment.toBuilder();
    });
  }

  SendCommentSuccessful._();

  @override
  Comment get comment;
}

abstract class SendCommentError //
    implements
        Built<SendCommentError, SendCommentErrorBuilder>,
        PlatformAction,
        SendCommentAction,
        ErrorAction //
{
  factory SendCommentError(Object error, Comment comment) {
    return _$SendCommentError((SendCommentErrorBuilder b) {
      b
        ..error = error
        ..comment = comment.toBuilder();
    });
  }

  SendCommentError._();

  @override
  Object get error;

  @override
  Comment get comment;
}
