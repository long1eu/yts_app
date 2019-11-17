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
      'providers',
      serializers.serialize(object.providers,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];
    if (object.email != null) {
      result
        ..add('email')
        ..add(serializers.serialize(object.email,
            specifiedType: const FullType(String)));
    }
    if (object.password != null) {
      result
        ..add('password')
        ..add(serializers.serialize(object.password,
            specifiedType: const FullType(String)));
    }
    if (object.photo != null) {
      result
        ..add('photo')
        ..add(serializers.serialize(object.photo,
            specifiedType: const FullType(String)));
    }
    if (object.displayName != null) {
      result
        ..add('displayName')
        ..add(serializers.serialize(object.displayName,
            specifiedType: const FullType(String)));
    }
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
        case 'providers':
          result.providers.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<dynamic>);
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
  @override
  final BuiltList<String> providers;

  factory _$RegisterInfo([void Function(RegisterInfoBuilder) updates]) =>
      (new RegisterInfoBuilder()..update(updates)).build();

  _$RegisterInfo._(
      {this.email, this.password, this.photo, this.displayName, this.providers})
      : super._() {
    if (providers == null) {
      throw new BuiltValueNullFieldError('RegisterInfo', 'providers');
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
        displayName == other.displayName &&
        providers == other.providers;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, email.hashCode), password.hashCode), photo.hashCode),
            displayName.hashCode),
        providers.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RegisterInfo')
          ..add('email', email)
          ..add('password', password)
          ..add('photo', photo)
          ..add('displayName', displayName)
          ..add('providers', providers))
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

  ListBuilder<String> _providers;
  ListBuilder<String> get providers =>
      _$this._providers ??= new ListBuilder<String>();
  set providers(ListBuilder<String> providers) => _$this._providers = providers;

  RegisterInfoBuilder();

  RegisterInfoBuilder get _$this {
    if (_$v != null) {
      _email = _$v.email;
      _password = _$v.password;
      _photo = _$v.photo;
      _displayName = _$v.displayName;
      _providers = _$v.providers?.toBuilder();
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
    _$RegisterInfo _$result;
    try {
      _$result = _$v ??
          new _$RegisterInfo._(
              email: email,
              password: password,
              photo: photo,
              displayName: displayName,
              providers: providers.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'providers';
        providers.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'RegisterInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
