// GENERATED CODE - DO NOT MODIFY BY HAND

part of authenticate;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Authenticate extends Authenticate {
  @override
  final CredentialType type;
  @override
  final ActionResponse response;

  factory _$Authenticate([void Function(AuthenticateBuilder) updates]) =>
      (new AuthenticateBuilder()..update(updates)).build();

  _$Authenticate._({this.type, this.response}) : super._() {
    if (type == null) {
      throw new BuiltValueNullFieldError('Authenticate', 'type');
    }
    if (response == null) {
      throw new BuiltValueNullFieldError('Authenticate', 'response');
    }
  }

  @override
  Authenticate rebuild(void Function(AuthenticateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthenticateBuilder toBuilder() => new AuthenticateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Authenticate && type == other.type;
  }

  @override
  int get hashCode {
    return $jf($jc(0, type.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Authenticate')
          ..add('type', type)
          ..add('response', response))
        .toString();
  }
}

class AuthenticateBuilder
    implements Builder<Authenticate, AuthenticateBuilder> {
  _$Authenticate _$v;

  CredentialType _type;
  CredentialType get type => _$this._type;
  set type(CredentialType type) => _$this._type = type;

  ActionResponse _response;
  ActionResponse get response => _$this._response;
  set response(ActionResponse response) => _$this._response = response;

  AuthenticateBuilder();

  AuthenticateBuilder get _$this {
    if (_$v != null) {
      _type = _$v.type;
      _response = _$v.response;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Authenticate other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Authenticate;
  }

  @override
  void update(void Function(AuthenticateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Authenticate build() {
    final _$result =
        _$v ?? new _$Authenticate._(type: type, response: response);
    replace(_$result);
    return _$result;
  }
}

class _$AuthenticateSuccessful extends AuthenticateSuccessful {
  @override
  final User user;

  factory _$AuthenticateSuccessful(
          [void Function(AuthenticateSuccessfulBuilder) updates]) =>
      (new AuthenticateSuccessfulBuilder()..update(updates)).build();

  _$AuthenticateSuccessful._({this.user}) : super._() {
    if (user == null) {
      throw new BuiltValueNullFieldError('AuthenticateSuccessful', 'user');
    }
  }

  @override
  AuthenticateSuccessful rebuild(
          void Function(AuthenticateSuccessfulBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthenticateSuccessfulBuilder toBuilder() =>
      new AuthenticateSuccessfulBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthenticateSuccessful && user == other.user;
  }

  @override
  int get hashCode {
    return $jf($jc(0, user.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AuthenticateSuccessful')
          ..add('user', user))
        .toString();
  }
}

class AuthenticateSuccessfulBuilder
    implements Builder<AuthenticateSuccessful, AuthenticateSuccessfulBuilder> {
  _$AuthenticateSuccessful _$v;

  UserBuilder _user;
  UserBuilder get user => _$this._user ??= new UserBuilder();
  set user(UserBuilder user) => _$this._user = user;

  AuthenticateSuccessfulBuilder();

  AuthenticateSuccessfulBuilder get _$this {
    if (_$v != null) {
      _user = _$v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthenticateSuccessful other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AuthenticateSuccessful;
  }

  @override
  void update(void Function(AuthenticateSuccessfulBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AuthenticateSuccessful build() {
    _$AuthenticateSuccessful _$result;
    try {
      _$result = _$v ?? new _$AuthenticateSuccessful._(user: user.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'user';
        user.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AuthenticateSuccessful', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$AuthenticateError extends AuthenticateError {
  @override
  final Object error;

  factory _$AuthenticateError(
          [void Function(AuthenticateErrorBuilder) updates]) =>
      (new AuthenticateErrorBuilder()..update(updates)).build();

  _$AuthenticateError._({this.error}) : super._() {
    if (error == null) {
      throw new BuiltValueNullFieldError('AuthenticateError', 'error');
    }
  }

  @override
  AuthenticateError rebuild(void Function(AuthenticateErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthenticateErrorBuilder toBuilder() =>
      new AuthenticateErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthenticateError && error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc(0, error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AuthenticateError')
          ..add('error', error))
        .toString();
  }
}

class AuthenticateErrorBuilder
    implements Builder<AuthenticateError, AuthenticateErrorBuilder> {
  _$AuthenticateError _$v;

  Object _error;
  Object get error => _$this._error;
  set error(Object error) => _$this._error = error;

  AuthenticateErrorBuilder();

  AuthenticateErrorBuilder get _$this {
    if (_$v != null) {
      _error = _$v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthenticateError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AuthenticateError;
  }

  @override
  void update(void Function(AuthenticateErrorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AuthenticateError build() {
    final _$result = _$v ?? new _$AuthenticateError._(error: error);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
