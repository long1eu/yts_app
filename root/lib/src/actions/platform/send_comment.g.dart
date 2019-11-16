// GENERATED CODE - DO NOT MODIFY BY HAND

part of send_comment;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SendComment extends SendComment {
  @override
  final Comment comment;

  factory _$SendComment([void Function(SendCommentBuilder) updates]) =>
      (new SendCommentBuilder()..update(updates)).build();

  _$SendComment._({this.comment}) : super._() {
    if (comment == null) {
      throw new BuiltValueNullFieldError('SendComment', 'comment');
    }
  }

  @override
  SendComment rebuild(void Function(SendCommentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SendCommentBuilder toBuilder() => new SendCommentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SendComment && comment == other.comment;
  }

  @override
  int get hashCode {
    return $jf($jc(0, comment.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SendComment')..add('comment', comment))
        .toString();
  }
}

class SendCommentBuilder implements Builder<SendComment, SendCommentBuilder> {
  _$SendComment _$v;

  CommentBuilder _comment;
  CommentBuilder get comment => _$this._comment ??= new CommentBuilder();
  set comment(CommentBuilder comment) => _$this._comment = comment;

  SendCommentBuilder();

  SendCommentBuilder get _$this {
    if (_$v != null) {
      _comment = _$v.comment?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SendComment other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SendComment;
  }

  @override
  void update(void Function(SendCommentBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SendComment build() {
    _$SendComment _$result;
    try {
      _$result = _$v ?? new _$SendComment._(comment: comment.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'comment';
        comment.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SendComment', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$SendCommentSuccessful extends SendCommentSuccessful {
  @override
  final Comment comment;

  factory _$SendCommentSuccessful(
          [void Function(SendCommentSuccessfulBuilder) updates]) =>
      (new SendCommentSuccessfulBuilder()..update(updates)).build();

  _$SendCommentSuccessful._({this.comment}) : super._() {
    if (comment == null) {
      throw new BuiltValueNullFieldError('SendCommentSuccessful', 'comment');
    }
  }

  @override
  SendCommentSuccessful rebuild(
          void Function(SendCommentSuccessfulBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SendCommentSuccessfulBuilder toBuilder() =>
      new SendCommentSuccessfulBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SendCommentSuccessful && comment == other.comment;
  }

  @override
  int get hashCode {
    return $jf($jc(0, comment.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SendCommentSuccessful')
          ..add('comment', comment))
        .toString();
  }
}

class SendCommentSuccessfulBuilder
    implements Builder<SendCommentSuccessful, SendCommentSuccessfulBuilder> {
  _$SendCommentSuccessful _$v;

  CommentBuilder _comment;
  CommentBuilder get comment => _$this._comment ??= new CommentBuilder();
  set comment(CommentBuilder comment) => _$this._comment = comment;

  SendCommentSuccessfulBuilder();

  SendCommentSuccessfulBuilder get _$this {
    if (_$v != null) {
      _comment = _$v.comment?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SendCommentSuccessful other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SendCommentSuccessful;
  }

  @override
  void update(void Function(SendCommentSuccessfulBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SendCommentSuccessful build() {
    _$SendCommentSuccessful _$result;
    try {
      _$result = _$v ?? new _$SendCommentSuccessful._(comment: comment.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'comment';
        comment.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SendCommentSuccessful', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$SendCommentError extends SendCommentError {
  @override
  final Object error;
  @override
  final Comment comment;

  factory _$SendCommentError(
          [void Function(SendCommentErrorBuilder) updates]) =>
      (new SendCommentErrorBuilder()..update(updates)).build();

  _$SendCommentError._({this.error, this.comment}) : super._() {
    if (error == null) {
      throw new BuiltValueNullFieldError('SendCommentError', 'error');
    }
    if (comment == null) {
      throw new BuiltValueNullFieldError('SendCommentError', 'comment');
    }
  }

  @override
  SendCommentError rebuild(void Function(SendCommentErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SendCommentErrorBuilder toBuilder() =>
      new SendCommentErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SendCommentError &&
        error == other.error &&
        comment == other.comment;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, error.hashCode), comment.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SendCommentError')
          ..add('error', error)
          ..add('comment', comment))
        .toString();
  }
}

class SendCommentErrorBuilder
    implements Builder<SendCommentError, SendCommentErrorBuilder> {
  _$SendCommentError _$v;

  Object _error;
  Object get error => _$this._error;
  set error(Object error) => _$this._error = error;

  CommentBuilder _comment;
  CommentBuilder get comment => _$this._comment ??= new CommentBuilder();
  set comment(CommentBuilder comment) => _$this._comment = comment;

  SendCommentErrorBuilder();

  SendCommentErrorBuilder get _$this {
    if (_$v != null) {
      _error = _$v.error;
      _comment = _$v.comment?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SendCommentError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SendCommentError;
  }

  @override
  void update(void Function(SendCommentErrorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SendCommentError build() {
    _$SendCommentError _$result;
    try {
      _$result = _$v ??
          new _$SendCommentError._(error: error, comment: comment.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'comment';
        comment.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SendCommentError', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
