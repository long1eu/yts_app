// GENERATED CODE - DO NOT MODIFY BY HAND

part of movie_data;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MovieData> _$movieDataSerializer = new _$MovieDataSerializer();

class _$MovieDataSerializer implements StructuredSerializer<MovieData> {
  @override
  final Iterable<Type> types = const [MovieData, _$MovieData];
  @override
  final String wireName = 'MovieData';

  @override
  Iterable<Object> serialize(Serializers serializers, MovieData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'likes',
      serializers.serialize(object.likes, specifiedType: const FullType(int)),
      'comments',
      serializers.serialize(object.comments,
          specifiedType: const FullType(BuiltMap,
              const [const FullType(String), const FullType(Comment)])),
    ];

    return result;
  }

  @override
  MovieData deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MovieDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'likes':
          result.likes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'comments':
          result.comments.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(Comment)
              ])) as BuiltMap<dynamic, dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$MovieData extends MovieData {
  @override
  final int id;
  @override
  final int likes;
  @override
  final BuiltMap<String, Comment> comments;

  factory _$MovieData([void Function(MovieDataBuilder) updates]) =>
      (new MovieDataBuilder()..update(updates)).build();

  _$MovieData._({this.id, this.likes, this.comments}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('MovieData', 'id');
    }
    if (likes == null) {
      throw new BuiltValueNullFieldError('MovieData', 'likes');
    }
    if (comments == null) {
      throw new BuiltValueNullFieldError('MovieData', 'comments');
    }
  }

  @override
  MovieData rebuild(void Function(MovieDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MovieDataBuilder toBuilder() => new MovieDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MovieData &&
        id == other.id &&
        likes == other.likes &&
        comments == other.comments;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, id.hashCode), likes.hashCode), comments.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MovieData')
          ..add('id', id)
          ..add('likes', likes)
          ..add('comments', comments))
        .toString();
  }
}

class MovieDataBuilder implements Builder<MovieData, MovieDataBuilder> {
  _$MovieData _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  int _likes;
  int get likes => _$this._likes;
  set likes(int likes) => _$this._likes = likes;

  MapBuilder<String, Comment> _comments;
  MapBuilder<String, Comment> get comments =>
      _$this._comments ??= new MapBuilder<String, Comment>();
  set comments(MapBuilder<String, Comment> comments) =>
      _$this._comments = comments;

  MovieDataBuilder();

  MovieDataBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _likes = _$v.likes;
      _comments = _$v.comments?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MovieData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MovieData;
  }

  @override
  void update(void Function(MovieDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MovieData build() {
    _$MovieData _$result;
    try {
      _$result = _$v ??
          new _$MovieData._(id: id, likes: likes, comments: comments.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'comments';
        comments.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'MovieData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

TypeAdapter<MovieData> _$movieDataTypeAdapter = new _$MovieDataAdapter();

class _$MovieDataAdapter extends TypeAdapter<MovieData> {
  int get typeId => 4;

  @override
  MovieData read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return (MovieDataBuilder()
          ..id = fields[0]
          ..likes = fields[1])
        .build();
  }

  @override
  void write(BinaryWriter writer, MovieData obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.likes);
  }
}
