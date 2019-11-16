// GENERATED CODE - DO NOT MODIFY BY HAND

part of register_info;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RegisterInfo> _$registerInfoSerializer =
    new _$RegisterInfoSerializer();

class _$RegisterInfoSerializer implements StructuredSerializer<RegisterInfo> {
  @override
  final Iterable<Type> types = const [RegisterInfo, _$RegisterInfo];
  @override
  final String wireName = 'RegisterInfo';

  @override
  Iterable<Object> serialize(Serializers serializers, RegisterInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'password',
      serializers.serialize(object.password,
          specifiedType: const FullType(String)),
      'photo',
      serializers.serialize(object.photo,
          specifiedType: const FullType(String)),
      'displayName',
      serializers.serialize(object.displayName,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  RegisterInfo deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RegisterInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'photo':
          result.photo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'displayName':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$RegisterInfo extends RegisterInfo {
  @override
  final String email;
  @override
  final String password;
  @override
  final String photo;
  @override
  final String displayName;

  factory _$RegisterInfo([void Function(RegisterInfoBuilder) updates]) =>
      (new RegisterInfoBuilder()..update(updates)).build();

  _$RegisterInfo._({this.email, this.password, this.photo, this.displayName})
      : super._() {
    if (email == null) {
      throw new BuiltValueNullFieldError('RegisterInfo', 'email');
    }
    if (password == null) {
      throw new BuiltValueNullFieldError('RegisterInfo', 'password');
    }
    if (photo == null) {
      throw new BuiltValueNullFieldError('RegisterInfo', 'photo');
    }
    if (displayName == null) {
      throw new BuiltValueNullFieldError('RegisterInfo', 'displayName');
    }
  }

  @override
  RegisterInfo rebuild(void Function(RegisterInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegisterInfoBuilder toBuilder() => new RegisterInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegisterInfo &&
        email == other.email &&
        password == other.password &&
        photo == other.photo &&
        displayName == other.displayName;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, email.hashCode), password.hashCode), photo.hashCode),
        displayName.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RegisterInfo')
          ..add('email', email)
          ..add('password', password)
          ..add('photo', photo)
          ..add('displayName', displayName))
        .toString();
  }
}

class RegisterInfoBuilder
    implements Builder<RegisterInfo, RegisterInfoBuilder> {
  _$RegisterInfo _$v;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  String _photo;
  String get photo => _$this._photo;
  set photo(String photo) => _$this._photo = photo;

  String _displayName;
  String get displayName => _$this._displayName;
  set displayName(String displayName) => _$this._displayName = displayName;

  RegisterInfoBuilder();

  RegisterInfoBuilder get _$this {
    if (_$v != null) {
      _email = _$v.email;
      _password = _$v.password;
      _photo = _$v.photo;
      _displayName = _$v.displayName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegisterInfo other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RegisterInfo;
  }

  @override
  void update(void Function(RegisterInfoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RegisterInfo build() {
    final _$result = _$v ??
        new _$RegisterInfo._(
            email: email,
            password: password,
            photo: photo,
            displayName: displayName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
