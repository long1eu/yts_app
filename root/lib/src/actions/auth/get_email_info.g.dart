// GENERATED CODE - DO NOT MODIFY BY HAND

part of get_email_info;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetEmailInfo extends GetEmailInfo {
  @override
  final String email;
  @override
  final ActionResponse response;

  factory _$GetEmailInfo([void Function(GetEmailInfoBuilder) updates]) =>
      (new GetEmailInfoBuilder()..update(updates)).build();

  _$GetEmailInfo._({this.email, this.response}) : super._() {
    if (email == null) {
      throw new BuiltValueNullFieldError('GetEmailInfo', 'email');
    }
    if (response == null) {
      throw new BuiltValueNullFieldError('GetEmailInfo', 'response');
    }
  }

  @override
  GetEmailInfo rebuild(void Function(GetEmailInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetEmailInfoBuilder toBuilder() => new GetEmailInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetEmailInfo && email == other.email;
  }

  @override
  int get hashCode {
    return $jf($jc(0, email.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetEmailInfo')
          ..add('email', email)
          ..add('response', response))
        .toString();
  }
}

class GetEmailInfoBuilder
    implements Builder<GetEmailInfo, GetEmailInfoBuilder> {
  _$GetEmailInfo _$v;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  ActionResponse _response;
  ActionResponse get response => _$this._response;
  set response(ActionResponse response) => _$this._response = response;

  GetEmailInfoBuilder();

  GetEmailInfoBuilder get _$this {
    if (_$v != null) {
      _email = _$v.email;
      _response = _$v.response;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetEmailInfo other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetEmailInfo;
  }

  @override
  void update(void Function(GetEmailInfoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetEmailInfo build() {
    final _$result =
        _$v ?? new _$GetEmailInfo._(email: email, response: response);
    replace(_$result);
    return _$result;
  }
}

class _$GetEmailInfoSuccessful extends GetEmailInfoSuccessful {
  @override
  final BuiltList<String> providers;
  @override
  final String email;

  factory _$GetEmailInfoSuccessful(
          [void Function(GetEmailInfoSuccessfulBuilder) updates]) =>
      (new GetEmailInfoSuccessfulBuilder()..update(updates)).build();

  _$GetEmailInfoSuccessful._({this.providers, this.email}) : super._() {
    if (providers == null) {
      throw new BuiltValueNullFieldError('GetEmailInfoSuccessful', 'providers');
    }
    if (email == null) {
      throw new BuiltValueNullFieldError('GetEmailInfoSuccessful', 'email');
    }
  }

  @override
  GetEmailInfoSuccessful rebuild(
          void Function(GetEmailInfoSuccessfulBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetEmailInfoSuccessfulBuilder toBuilder() =>
      new GetEmailInfoSuccessfulBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetEmailInfoSuccessful &&
        providers == other.providers &&
        email == other.email;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, providers.hashCode), email.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetEmailInfoSuccessful')
          ..add('providers', providers)
          ..add('email', email))
        .toString();
  }
}

class GetEmailInfoSuccessfulBuilder
    implements Builder<GetEmailInfoSuccessful, GetEmailInfoSuccessfulBuilder> {
  _$GetEmailInfoSuccessful _$v;

  ListBuilder<String> _providers;
  ListBuilder<String> get providers =>
      _$this._providers ??= new ListBuilder<String>();
  set providers(ListBuilder<String> providers) => _$this._providers = providers;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  GetEmailInfoSuccessfulBuilder();

  GetEmailInfoSuccessfulBuilder get _$this {
    if (_$v != null) {
      _providers = _$v.providers?.toBuilder();
      _email = _$v.email;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetEmailInfoSuccessful other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetEmailInfoSuccessful;
  }

  @override
  void update(void Function(GetEmailInfoSuccessfulBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetEmailInfoSuccessful build() {
    _$GetEmailInfoSuccessful _$result;
    try {
      _$result = _$v ??
          new _$GetEmailInfoSuccessful._(
              providers: providers.build(), email: email);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'providers';
        providers.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GetEmailInfoSuccessful', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GetEmailInfoError extends GetEmailInfoError {
  @override
  final Object error;

  factory _$GetEmailInfoError(
          [void Function(GetEmailInfoErrorBuilder) updates]) =>
      (new GetEmailInfoErrorBuilder()..update(updates)).build();

  _$GetEmailInfoError._({this.error}) : super._() {
    if (error == null) {
      throw new BuiltValueNullFieldError('GetEmailInfoError', 'error');
    }
  }

  @override
  GetEmailInfoError rebuild(void Function(GetEmailInfoErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetEmailInfoErrorBuilder toBuilder() =>
      new GetEmailInfoErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetEmailInfoError && error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc(0, error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetEmailInfoError')
          ..add('error', error))
        .toString();
  }
}

class GetEmailInfoErrorBuilder
    implements Builder<GetEmailInfoError, GetEmailInfoErrorBuilder> {
  _$GetEmailInfoError _$v;

  Object _error;
  Object get error => _$this._error;
  set error(Object error) => _$this._error = error;

  GetEmailInfoErrorBuilder();

  GetEmailInfoErrorBuilder get _$this {
    if (_$v != null) {
      _error = _$v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetEmailInfoError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetEmailInfoError;
  }

  @override
  void update(void Function(GetEmailInfoErrorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetEmailInfoError build() {
    final _$result = _$v ?? new _$GetEmailInfoError._(error: error);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
