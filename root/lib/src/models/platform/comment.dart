// File created by
// Lung Razvan <long1eu>
// on 16/11/2019

library comment;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:root/src/utils/auto_id.dart';

import 'serializers.dart';

part 'comment.g.dart';

@HiveType(typeId: 5)
abstract class Comment implements Built<Comment, CommentBuilder> {
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
        ..createdAt = createdAt ?? DateTime.now().toUtc().microsecondsSinceEpoch;
    });
  }

  factory Comment.fromJson(Map<dynamic, dynamic> json) => serializers.deserializeWith(serializer, json);

  Comment._();

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

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this);

  static Serializer<Comment> get serializer => _$commentSerializer;

  static _$CommentAdapter get typeAdapter => _$commentTypeAdapter;
}
