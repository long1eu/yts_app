// GENERATED CODE - DO NOT MODIFY BY HAND

part of comment;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Comment> _$commentSerializer = new _$CommentSerializer();

class _$CommentSerializer implements StructuredSerializer<Comment> {
  @override
  final Iterable<Type> types = const [Comment, _$Comment];
  @override
  final String wireName = 'Comment';

  @override
  Iterable<Object> serialize(Serializers serializers, Comment object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'movieId',
      serializers.serialize(object.movieId, specifiedType: const FullType(int)),
      'uid',
      serializers.serialize(object.uid, specifiedType: const FullType(String)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(int)),
      'text',
      serializers.serialize(object.text, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Comment deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CommentBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'movieId':
          result.movieId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Comment extends Comment {
  @override
  final String id;
  @override
  final int movieId;
  @override
  final String uid;
  @override
  final int createdAt;
  @override
  final String text;
  @override
  final ObjectChangeType changeType;
  @override
  final SendingStatus status;

  factory _$Comment([void Function(CommentBuilder) updates]) =>
      (new CommentBuilder()..update(updates)).build();

  _$Comment._(
      {this.id,
      this.movieId,
      this.uid,
      this.createdAt,
      this.text,
      this.changeType,
      this.status})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Comment', 'id');
    }
    if (movieId == null) {
      throw new BuiltValueNullFieldError('Comment', 'movieId');
    }
    if (uid == null) {
      throw new BuiltValueNullFieldError('Comment', 'uid');
    }
    if (createdAt == null) {
      throw new BuiltValueNullFieldError('Comment', 'createdAt');
    }
    if (text == null) {
      throw new BuiltValueNullFieldError('Comment', 'text');
    }
  }

  @override
  Comment rebuild(void Function(CommentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommentBuilder toBuilder() => new CommentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Comment &&
        id == other.id &&
        movieId == other.movieId &&
        uid == other.uid &&
        createdAt == other.createdAt &&
        text == other.text &&
        changeType == other.changeType &&
        status == other.status;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, id.hashCode), movieId.hashCode),
                        uid.hashCode),
                    createdAt.hashCode),
                text.hashCode),
            changeType.hashCode),
        status.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Comment')
          ..add('id', id)
          ..add('movieId', movieId)
          ..add('uid', uid)
          ..add('createdAt', createdAt)
          ..add('text', text)
          ..add('changeType', changeType)
          ..add('status', status))
        .toString();
  }
}

class CommentBuilder implements Builder<Comment, CommentBuilder> {
  _$Comment _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  int _movieId;
  int get movieId => _$this._movieId;
  set movieId(int movieId) => _$this._movieId = movieId;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  int _createdAt;
  int get createdAt => _$this._createdAt;
  set createdAt(int createdAt) => _$this._createdAt = createdAt;

  String _text;
  String get text => _$this._text;
  set text(String text) => _$this._text = text;

  ObjectChangeType _changeType;
  ObjectChangeType get changeType => _$this._changeType;
  set changeType(ObjectChangeType changeType) =>
      _$this._changeType = changeType;

  SendingStatus _status;
  SendingStatus get status => _$this._status;
  set status(SendingStatus status) => _$this._status = status;

  CommentBuilder();

  CommentBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _movieId = _$v.movieId;
      _uid = _$v.uid;
      _createdAt = _$v.createdAt;
      _text = _$v.text;
      _changeType = _$v.changeType;
      _status = _$v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Comment other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Comment;
  }

  @override
  void update(void Function(CommentBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Comment build() {
    final _$result = _$v ??
        new _$Comment._(
            id: id,
            movieId: movieId,
            uid: uid,
            createdAt: createdAt,
            text: text,
            changeType: changeType,
            status: status);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

TypeAdapter<Comment> _$commentTypeAdapter = new _$CommentAdapter();

class _$CommentAdapter extends TypeAdapter<Comment> {
  int get typeId => 5;

  @override
  Comment read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return (CommentBuilder()
          ..id = fields[0]
          ..movieId = fields[1]
          ..uid = fields[2]
          ..createdAt = fields[3]
          ..text = fields[4])
        .build();
  }

  @override
  void write(BinaryWriter writer, Comment obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.movieId)
      ..writeByte(2)
      ..write(obj.uid)
      ..writeByte(3)
      ..write(obj.createdAt)
      ..writeByte(4)
      ..write(obj.text);
  }
}
