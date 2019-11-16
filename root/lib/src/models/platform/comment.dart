// File created by
// Lung Razvan <long1eu>
// on 16/11/2019

library comment;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:root/src/actions/index.dart';
import 'package:root/src/data/database_service.dart';
import 'package:root/src/utils/auto_id.dart';

import 'index.dart';
import 'serializers.dart';

part 'comment.g.dart';

@HiveType(typeId: 5)
abstract class Comment implements Built<Comment, CommentBuilder>, ListenEventItem {
  factory Comment([void Function(CommentBuilder b) updates]) = _$Comment;

  factory Comment.create({
    @required int movieId,
    @required String uid,
    @required String text,
    String id,
    int createdAt,
  }) {
    return _$Comment((CommentBuilder b) {
      b
        ..id = id ?? autoId
        ..movieId = movieId
        ..text = text
        ..uid = uid
        ..createdAt = createdAt ?? DateTime.now().toUtc().microsecondsSinceEpoch
        ..changeType = ObjectChangeType.added
        ..status = SendingStatus.sending;
    });
  }

  factory Comment.fromJson(Map<dynamic, dynamic> json, [ObjectChangeType type]) {
    return serializers.deserializeWith(serializer, json).rebuild((CommentBuilder b) {
      b.changeType = type;
    });
  }

  Comment._();

  @override
  @HiveField(0)
  String get id;

  @HiveField(1)
  int get movieId;

  @HiveField(2)
  String get uid;

  @HiveField(3)
  int get createdAt;

  @HiveField(4)
  String get text;

  @override
  @nullable
  @BuiltValueField(serialize: false)
  ObjectChangeType get changeType;

  @nullable
  @BuiltValueField(serialize: false)
  SendingStatus get status;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this);

  static Serializer<Comment> get serializer => _$commentSerializer;

  static _$CommentAdapter get typeAdapter => _$commentTypeAdapter;
}
