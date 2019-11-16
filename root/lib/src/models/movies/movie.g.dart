// GENERATED CODE - DO NOT MODIFY BY HAND

part of movie;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Movie> _$movieSerializer = new _$MovieSerializer();

class _$MovieSerializer implements StructuredSerializer<Movie> {
  @override
  final Iterable<Type> types = const [Movie, _$Movie];
  @override
  final String wireName = 'Movie';

  @override
  Iterable<Object> serialize(Serializers serializers, Movie object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'year',
      serializers.serialize(object.year, specifiedType: const FullType(int)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'rating',
      serializers.serialize(object.rating,
          specifiedType: const FullType(double)),
      'genres',
      serializers.serialize(object.genres,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'summary',
      serializers.serialize(object.summary,
          specifiedType: const FullType(String)),
      'medium_cover_image',
      serializers.serialize(object.smallImage,
          specifiedType: const FullType(String)),
      'large_cover_image',
      serializers.serialize(object.largeImage,
          specifiedType: const FullType(String)),
      'background_image_original',
      serializers.serialize(object.background,
          specifiedType: const FullType(String)),
    ];
    if (object.youtube != null) {
      result
        ..add('yt_trailer_code')
        ..add(serializers.serialize(object.youtube,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Movie deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MovieBuilder();

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
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'year':
          result.year = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'genres':
          result.genres.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<dynamic>);
          break;
        case 'summary':
          result.summary = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'yt_trailer_code':
          result.youtube = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'medium_cover_image':
          result.smallImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'large_cover_image':
          result.largeImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'background_image_original':
          result.background = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Movie extends Movie {
  @override
  final int id;
  @override
  final String url;
  @override
  final int year;
  @override
  final String title;
  @override
  final double rating;
  @override
  final BuiltList<String> genres;
  @override
  final String summary;
  @override
  final String youtube;
  @override
  final String smallImage;
  @override
  final String largeImage;
  @override
  final String background;

  factory _$Movie([void Function(MovieBuilder) updates]) =>
      (new MovieBuilder()..update(updates)).build();

  _$Movie._(
      {this.id,
      this.url,
      this.year,
      this.title,
      this.rating,
      this.genres,
      this.summary,
      this.youtube,
      this.smallImage,
      this.largeImage,
      this.background})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Movie', 'id');
    }
    if (url == null) {
      throw new BuiltValueNullFieldError('Movie', 'url');
    }
    if (year == null) {
      throw new BuiltValueNullFieldError('Movie', 'year');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError('Movie', 'title');
    }
    if (rating == null) {
      throw new BuiltValueNullFieldError('Movie', 'rating');
    }
    if (genres == null) {
      throw new BuiltValueNullFieldError('Movie', 'genres');
    }
    if (summary == null) {
      throw new BuiltValueNullFieldError('Movie', 'summary');
    }
    if (smallImage == null) {
      throw new BuiltValueNullFieldError('Movie', 'smallImage');
    }
    if (largeImage == null) {
      throw new BuiltValueNullFieldError('Movie', 'largeImage');
    }
    if (background == null) {
      throw new BuiltValueNullFieldError('Movie', 'background');
    }
  }

  @override
  Movie rebuild(void Function(MovieBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MovieBuilder toBuilder() => new MovieBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Movie &&
        id == other.id &&
        url == other.url &&
        year == other.year &&
        title == other.title &&
        rating == other.rating &&
        genres == other.genres &&
        summary == other.summary &&
        youtube == other.youtube &&
        smallImage == other.smallImage &&
        largeImage == other.largeImage &&
        background == other.background;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc($jc(0, id.hashCode), url.hashCode),
                                        year.hashCode),
                                    title.hashCode),
                                rating.hashCode),
                            genres.hashCode),
                        summary.hashCode),
                    youtube.hashCode),
                smallImage.hashCode),
            largeImage.hashCode),
        background.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Movie')
          ..add('id', id)
          ..add('url', url)
          ..add('year', year)
          ..add('title', title)
          ..add('rating', rating)
          ..add('genres', genres)
          ..add('summary', summary)
          ..add('youtube', youtube)
          ..add('smallImage', smallImage)
          ..add('largeImage', largeImage)
          ..add('background', background))
        .toString();
  }
}

class MovieBuilder implements Builder<Movie, MovieBuilder> {
  _$Movie _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  int _year;
  int get year => _$this._year;
  set year(int year) => _$this._year = year;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  double _rating;
  double get rating => _$this._rating;
  set rating(double rating) => _$this._rating = rating;

  ListBuilder<String> _genres;
  ListBuilder<String> get genres =>
      _$this._genres ??= new ListBuilder<String>();
  set genres(ListBuilder<String> genres) => _$this._genres = genres;

  String _summary;
  String get summary => _$this._summary;
  set summary(String summary) => _$this._summary = summary;

  String _youtube;
  String get youtube => _$this._youtube;
  set youtube(String youtube) => _$this._youtube = youtube;

  String _smallImage;
  String get smallImage => _$this._smallImage;
  set smallImage(String smallImage) => _$this._smallImage = smallImage;

  String _largeImage;
  String get largeImage => _$this._largeImage;
  set largeImage(String largeImage) => _$this._largeImage = largeImage;

  String _background;
  String get background => _$this._background;
  set background(String background) => _$this._background = background;

  MovieBuilder();

  MovieBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _url = _$v.url;
      _year = _$v.year;
      _title = _$v.title;
      _rating = _$v.rating;
      _genres = _$v.genres?.toBuilder();
      _summary = _$v.summary;
      _youtube = _$v.youtube;
      _smallImage = _$v.smallImage;
      _largeImage = _$v.largeImage;
      _background = _$v.background;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Movie other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Movie;
  }

  @override
  void update(void Function(MovieBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Movie build() {
    _$Movie _$result;
    try {
      _$result = _$v ??
          new _$Movie._(
              id: id,
              url: url,
              year: year,
              title: title,
              rating: rating,
              genres: genres.build(),
              summary: summary,
              youtube: youtube,
              smallImage: smallImage,
              largeImage: largeImage,
              background: background);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'genres';
        genres.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Movie', _$failedField, e.toString());
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

TypeAdapter<Movie> _$movieTypeAdapter = new _$MovieAdapter();

class _$MovieAdapter extends TypeAdapter<Movie> {
  int get typeId => 1;

  @override
  Movie read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return (MovieBuilder()
          ..id = fields[0]
          ..url = fields[1]
          ..year = fields[2]
          ..title = fields[3]
          ..rating = fields[4]
          ..genres = fields[5] == null ? null : ListBuilder<String>(fields[5])
          ..summary = fields[6]
          ..youtube = fields[7]
          ..smallImage = fields[8]
          ..largeImage = fields[9]
          ..background = fields[10])
        .build();
  }

  @override
  void write(BinaryWriter writer, Movie obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.url)
      ..writeByte(2)
      ..write(obj.year)
      ..writeByte(3)
      ..write(obj.title)
      ..writeByte(4)
      ..write(obj.rating)
      ..writeByte(5)
      ..write(obj.genres?.toList())
      ..writeByte(6)
      ..write(obj.summary)
      ..writeByte(7)
      ..write(obj.youtube)
      ..writeByte(8)
      ..write(obj.smallImage)
      ..writeByte(9)
      ..write(obj.largeImage)
      ..writeByte(10)
      ..write(obj.background);
  }
}
