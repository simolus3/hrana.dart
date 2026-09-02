// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'protocol.json.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StreamError {
  String get message;
  String? get code;

  /// Create a copy of StreamError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StreamErrorCopyWith<StreamError> get copyWith =>
      _$StreamErrorCopyWithImpl<StreamError>(this as StreamError, _$identity);

  /// Serializes this StreamError to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as StreamError;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StreamError &&
            (identical(other.message, _this.message) ||
                other.message == _this.message) &&
            (identical(other.code, _this.code) || other.code == _this.code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as StreamError;
    return Object.hash(runtimeType, _this.message, _this.code);
  }

  @override
  String toString() {
    final _this = this as StreamError;
    return 'StreamError(message: ${_this.message}, code: ${_this.code})';
  }
}

/// @nodoc
abstract mixin class $StreamErrorCopyWith<$Res> {
  factory $StreamErrorCopyWith(
          StreamError value, $Res Function(StreamError) _then) =
      _$StreamErrorCopyWithImpl;
  @useResult
  $Res call({String message, String? code});
}

/// @nodoc
class _$StreamErrorCopyWithImpl<$Res> implements $StreamErrorCopyWith<$Res> {
  _$StreamErrorCopyWithImpl(this._self, this._then);

  final StreamError _self;
  final $Res Function(StreamError) _then;

  /// Create a copy of StreamError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? code = freezed,
  }) {
    return _then(StreamError(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: freezed == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [StreamError].
extension StreamErrorPatterns on StreamError {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_StreamError value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StreamError() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_StreamError value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StreamError():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_StreamError value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StreamError() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String message, String? code)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StreamError() when $default != null:
        return $default(_that.message, _that.code);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String message, String? code) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StreamError():
        return $default(_that.message, _that.code);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String message, String? code)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StreamError() when $default != null:
        return $default(_that.message, _that.code);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _StreamError extends StreamError {
  const _StreamError({required this.message, this.code}) : super._();
  factory _StreamError.fromJson(Map<String, dynamic> json) =>
      _$StreamErrorFromJson(json);

  @override
  final String message;
  @override
  final String? code;

  /// Create a copy of StreamError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StreamErrorCopyWith<_StreamError> get copyWith =>
      __$StreamErrorCopyWithImpl<_StreamError>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StreamErrorToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StreamError &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, message, code);
  }

  @override
  String toString() {
    return 'StreamError(message: $message, code: $code)';
  }
}

/// @nodoc
abstract mixin class _$StreamErrorCopyWith<$Res>
    implements $StreamErrorCopyWith<$Res> {
  factory _$StreamErrorCopyWith(
          _StreamError value, $Res Function(_StreamError) _then) =
      __$StreamErrorCopyWithImpl;
  @override
  @useResult
  $Res call({String message, String? code});
}

/// @nodoc
class __$StreamErrorCopyWithImpl<$Res> implements _$StreamErrorCopyWith<$Res> {
  __$StreamErrorCopyWithImpl(this._self, this._then);

  final _StreamError _self;
  final $Res Function(_StreamError) _then;

  /// Create a copy of StreamError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
    Object? code = freezed,
  }) {
    return _then(_StreamError(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: freezed == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$Stmt {
  String? get sql;
  int? get sqlId;
  List<HranaValue> get args;
  List<NamedArg> get namedArgs;
  bool? get wantRows;

  /// Create a copy of Stmt
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StmtCopyWith<Stmt> get copyWith =>
      _$StmtCopyWithImpl<Stmt>(this as Stmt, _$identity);

  /// Serializes this Stmt to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as Stmt;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Stmt &&
            (identical(other.sql, _this.sql) || other.sql == _this.sql) &&
            (identical(other.sqlId, _this.sqlId) ||
                other.sqlId == _this.sqlId) &&
            const DeepCollectionEquality().equals(other.args, _this.args) &&
            const DeepCollectionEquality()
                .equals(other.namedArgs, _this.namedArgs) &&
            (identical(other.wantRows, _this.wantRows) ||
                other.wantRows == _this.wantRows));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as Stmt;
    return Object.hash(
        runtimeType,
        _this.sql,
        _this.sqlId,
        const DeepCollectionEquality().hash(_this.args),
        const DeepCollectionEquality().hash(_this.namedArgs),
        _this.wantRows);
  }

  @override
  String toString() {
    final _this = this as Stmt;
    return 'Stmt(sql: ${_this.sql}, sqlId: ${_this.sqlId}, args: ${_this.args}, namedArgs: ${_this.namedArgs}, wantRows: ${_this.wantRows})';
  }
}

/// @nodoc
abstract mixin class $StmtCopyWith<$Res> {
  factory $StmtCopyWith(Stmt value, $Res Function(Stmt) _then) =
      _$StmtCopyWithImpl;
  @useResult
  $Res call(
      {String? sql,
      int? sqlId,
      List<HranaValue> args,
      List<NamedArg> namedArgs,
      bool? wantRows});
}

/// @nodoc
class _$StmtCopyWithImpl<$Res> implements $StmtCopyWith<$Res> {
  _$StmtCopyWithImpl(this._self, this._then);

  final Stmt _self;
  final $Res Function(Stmt) _then;

  /// Create a copy of Stmt
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sql = freezed,
    Object? sqlId = freezed,
    Object? args = null,
    Object? namedArgs = null,
    Object? wantRows = freezed,
  }) {
    return _then(Stmt(
      sql: freezed == sql
          ? _self.sql
          : sql // ignore: cast_nullable_to_non_nullable
              as String?,
      sqlId: freezed == sqlId
          ? _self.sqlId
          : sqlId // ignore: cast_nullable_to_non_nullable
              as int?,
      args: null == args
          ? _self.args
          : args // ignore: cast_nullable_to_non_nullable
              as List<HranaValue>,
      namedArgs: null == namedArgs
          ? _self.namedArgs
          : namedArgs // ignore: cast_nullable_to_non_nullable
              as List<NamedArg>,
      wantRows: freezed == wantRows
          ? _self.wantRows
          : wantRows // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// Adds pattern-matching-related methods to [Stmt].
extension StmtPatterns on Stmt {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Stmt value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Stmt() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Stmt value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Stmt():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Stmt value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Stmt() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? sql, int? sqlId, List<HranaValue> args,
            List<NamedArg> namedArgs, bool? wantRows)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Stmt() when $default != null:
        return $default(_that.sql, _that.sqlId, _that.args, _that.namedArgs,
            _that.wantRows);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? sql, int? sqlId, List<HranaValue> args,
            List<NamedArg> namedArgs, bool? wantRows)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Stmt():
        return $default(_that.sql, _that.sqlId, _that.args, _that.namedArgs,
            _that.wantRows);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? sql, int? sqlId, List<HranaValue> args,
            List<NamedArg> namedArgs, bool? wantRows)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Stmt() when $default != null:
        return $default(_that.sql, _that.sqlId, _that.args, _that.namedArgs,
            _that.wantRows);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Stmt extends Stmt {
  const _Stmt(
      {this.sql,
      this.sqlId,
      List<HranaValue> args = const [],
      List<NamedArg> namedArgs = const [],
      this.wantRows})
      : _args = args,
        _namedArgs = namedArgs,
        super._();
  factory _Stmt.fromJson(Map<String, dynamic> json) => _$StmtFromJson(json);

  @override
  final String? sql;
  @override
  final int? sqlId;
  final List<HranaValue> _args;
  @override
  @JsonKey()
  List<HranaValue> get args {
    if (_args is EqualUnmodifiableListView) return _args;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_args);
  }

  final List<NamedArg> _namedArgs;
  @override
  @JsonKey()
  List<NamedArg> get namedArgs {
    if (_namedArgs is EqualUnmodifiableListView) return _namedArgs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_namedArgs);
  }

  @override
  final bool? wantRows;

  /// Create a copy of Stmt
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StmtCopyWith<_Stmt> get copyWith =>
      __$StmtCopyWithImpl<_Stmt>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StmtToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Stmt &&
            (identical(other.sql, sql) || other.sql == sql) &&
            (identical(other.sqlId, sqlId) || other.sqlId == sqlId) &&
            const DeepCollectionEquality().equals(other.args, _args) &&
            const DeepCollectionEquality()
                .equals(other.namedArgs, _namedArgs) &&
            (identical(other.wantRows, wantRows) ||
                other.wantRows == wantRows));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(
        runtimeType,
        sql,
        sqlId,
        const DeepCollectionEquality().hash(_args),
        const DeepCollectionEquality().hash(_namedArgs),
        wantRows);
  }

  @override
  String toString() {
    return 'Stmt(sql: $sql, sqlId: $sqlId, args: $args, namedArgs: $namedArgs, wantRows: $wantRows)';
  }
}

/// @nodoc
abstract mixin class _$StmtCopyWith<$Res> implements $StmtCopyWith<$Res> {
  factory _$StmtCopyWith(_Stmt value, $Res Function(_Stmt) _then) =
      __$StmtCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? sql,
      int? sqlId,
      List<HranaValue> args,
      List<NamedArg> namedArgs,
      bool? wantRows});
}

/// @nodoc
class __$StmtCopyWithImpl<$Res> implements _$StmtCopyWith<$Res> {
  __$StmtCopyWithImpl(this._self, this._then);

  final _Stmt _self;
  final $Res Function(_Stmt) _then;

  /// Create a copy of Stmt
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? sql = freezed,
    Object? sqlId = freezed,
    Object? args = null,
    Object? namedArgs = null,
    Object? wantRows = freezed,
  }) {
    return _then(_Stmt(
      sql: freezed == sql
          ? _self.sql
          : sql // ignore: cast_nullable_to_non_nullable
              as String?,
      sqlId: freezed == sqlId
          ? _self.sqlId
          : sqlId // ignore: cast_nullable_to_non_nullable
              as int?,
      args: null == args
          ? _self._args
          : args // ignore: cast_nullable_to_non_nullable
              as List<HranaValue>,
      namedArgs: null == namedArgs
          ? _self._namedArgs
          : namedArgs // ignore: cast_nullable_to_non_nullable
              as List<NamedArg>,
      wantRows: freezed == wantRows
          ? _self.wantRows
          : wantRows // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
mixin _$NamedArg {
  String get name;
  HranaValue get value;

  /// Create a copy of NamedArg
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NamedArgCopyWith<NamedArg> get copyWith =>
      _$NamedArgCopyWithImpl<NamedArg>(this as NamedArg, _$identity);

  /// Serializes this NamedArg to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as NamedArg;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NamedArg &&
            (identical(other.name, _this.name) || other.name == _this.name) &&
            (identical(other.value, _this.value) ||
                other.value == _this.value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as NamedArg;
    return Object.hash(runtimeType, _this.name, _this.value);
  }

  @override
  String toString() {
    final _this = this as NamedArg;
    return 'NamedArg(name: ${_this.name}, value: ${_this.value})';
  }
}

/// @nodoc
abstract mixin class $NamedArgCopyWith<$Res> {
  factory $NamedArgCopyWith(NamedArg value, $Res Function(NamedArg) _then) =
      _$NamedArgCopyWithImpl;
  @useResult
  $Res call({String name, HranaValue value});

  $HranaValueCopyWith<$Res> get value;
}

/// @nodoc
class _$NamedArgCopyWithImpl<$Res> implements $NamedArgCopyWith<$Res> {
  _$NamedArgCopyWithImpl(this._self, this._then);

  final NamedArg _self;
  final $Res Function(NamedArg) _then;

  /// Create a copy of NamedArg
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
  }) {
    return _then(NamedArg(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as HranaValue,
    ));
  }

  /// Create a copy of NamedArg
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HranaValueCopyWith<$Res> get value {
    return $HranaValueCopyWith<$Res>(_self.value, (value) {
      return _then(_self.copyWith(value: value));
    });
  }
}

/// Adds pattern-matching-related methods to [NamedArg].
extension NamedArgPatterns on NamedArg {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NamedArg value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NamedArg() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NamedArg value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NamedArg():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_NamedArg value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NamedArg() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String name, HranaValue value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NamedArg() when $default != null:
        return $default(_that.name, _that.value);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String name, HranaValue value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NamedArg():
        return $default(_that.name, _that.value);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String name, HranaValue value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NamedArg() when $default != null:
        return $default(_that.name, _that.value);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _NamedArg extends NamedArg {
  const _NamedArg({required this.name, required this.value}) : super._();
  factory _NamedArg.fromJson(Map<String, dynamic> json) =>
      _$NamedArgFromJson(json);

  @override
  final String name;
  @override
  final HranaValue value;

  /// Create a copy of NamedArg
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NamedArgCopyWith<_NamedArg> get copyWith =>
      __$NamedArgCopyWithImpl<_NamedArg>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NamedArgToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NamedArg &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, name, value);
  }

  @override
  String toString() {
    return 'NamedArg(name: $name, value: $value)';
  }
}

/// @nodoc
abstract mixin class _$NamedArgCopyWith<$Res>
    implements $NamedArgCopyWith<$Res> {
  factory _$NamedArgCopyWith(_NamedArg value, $Res Function(_NamedArg) _then) =
      __$NamedArgCopyWithImpl;
  @override
  @useResult
  $Res call({String name, HranaValue value});

  @override
  $HranaValueCopyWith<$Res> get value;
}

/// @nodoc
class __$NamedArgCopyWithImpl<$Res> implements _$NamedArgCopyWith<$Res> {
  __$NamedArgCopyWithImpl(this._self, this._then);

  final _NamedArg _self;
  final $Res Function(_NamedArg) _then;

  /// Create a copy of NamedArg
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? value = null,
  }) {
    return _then(_NamedArg(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as HranaValue,
    ));
  }

  /// Create a copy of NamedArg
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HranaValueCopyWith<$Res> get value {
    return $HranaValueCopyWith<$Res>(_self.value, (value) {
      return _then(_self.copyWith(value: value));
    });
  }
}

HranaValue _$HranaValueFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'null':
      return NullValue.fromJson(json);
    case 'integer':
      return IntegerValue.fromJson(json);
    case 'float':
      return FloatValue.fromJson(json);
    case 'text':
      return TextValue.fromJson(json);
    case 'blob':
      return BlobValue.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'type', 'HranaValue', 'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$HranaValue {
  /// Serializes this HranaValue to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HranaValue);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'HranaValue()';
  }
}

/// @nodoc
class $HranaValueCopyWith<$Res> {
  $HranaValueCopyWith(HranaValue _, $Res Function(HranaValue) __);
}

/// Adds pattern-matching-related methods to [HranaValue].
extension HranaValuePatterns on HranaValue {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NullValue value)? null$,
    TResult Function(IntegerValue value)? integer,
    TResult Function(FloatValue value)? float,
    TResult Function(TextValue value)? text,
    TResult Function(BlobValue value)? blob,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case NullValue() when null$ != null:
        return null$(_that);
      case IntegerValue() when integer != null:
        return integer(_that);
      case FloatValue() when float != null:
        return float(_that);
      case TextValue() when text != null:
        return text(_that);
      case BlobValue() when blob != null:
        return blob(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NullValue value) null$,
    required TResult Function(IntegerValue value) integer,
    required TResult Function(FloatValue value) float,
    required TResult Function(TextValue value) text,
    required TResult Function(BlobValue value) blob,
  }) {
    final _that = this;
    switch (_that) {
      case NullValue():
        return null$(_that);
      case IntegerValue():
        return integer(_that);
      case FloatValue():
        return float(_that);
      case TextValue():
        return text(_that);
      case BlobValue():
        return blob(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NullValue value)? null$,
    TResult? Function(IntegerValue value)? integer,
    TResult? Function(FloatValue value)? float,
    TResult? Function(TextValue value)? text,
    TResult? Function(BlobValue value)? blob,
  }) {
    final _that = this;
    switch (_that) {
      case NullValue() when null$ != null:
        return null$(_that);
      case IntegerValue() when integer != null:
        return integer(_that);
      case FloatValue() when float != null:
        return float(_that);
      case TextValue() when text != null:
        return text(_that);
      case BlobValue() when blob != null:
        return blob(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? null$,
    TResult Function(@Int64Converter() Int64 value)? integer,
    TResult Function(double value)? float,
    TResult Function(String value)? text,
    TResult Function(
            @Uint8ListConverter() @JsonKey(name: 'base64') Uint8List value)?
        blob,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case NullValue() when null$ != null:
        return null$();
      case IntegerValue() when integer != null:
        return integer(_that.value);
      case FloatValue() when float != null:
        return float(_that.value);
      case TextValue() when text != null:
        return text(_that.value);
      case BlobValue() when blob != null:
        return blob(_that.value);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() null$,
    required TResult Function(@Int64Converter() Int64 value) integer,
    required TResult Function(double value) float,
    required TResult Function(String value) text,
    required TResult Function(
            @Uint8ListConverter() @JsonKey(name: 'base64') Uint8List value)
        blob,
  }) {
    final _that = this;
    switch (_that) {
      case NullValue():
        return null$();
      case IntegerValue():
        return integer(_that.value);
      case FloatValue():
        return float(_that.value);
      case TextValue():
        return text(_that.value);
      case BlobValue():
        return blob(_that.value);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? null$,
    TResult? Function(@Int64Converter() Int64 value)? integer,
    TResult? Function(double value)? float,
    TResult? Function(String value)? text,
    TResult? Function(
            @Uint8ListConverter() @JsonKey(name: 'base64') Uint8List value)?
        blob,
  }) {
    final _that = this;
    switch (_that) {
      case NullValue() when null$ != null:
        return null$();
      case IntegerValue() when integer != null:
        return integer(_that.value);
      case FloatValue() when float != null:
        return float(_that.value);
      case TextValue() when text != null:
        return text(_that.value);
      case BlobValue() when blob != null:
        return blob(_that.value);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class NullValue extends HranaValue {
  const NullValue({String? $type})
      : $type = $type ?? 'null',
        super._();
  factory NullValue.fromJson(Map<String, dynamic> json) =>
      _$NullValueFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$NullValueToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NullValue);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'HranaValue.null\$()';
  }
}

/// @nodoc
@JsonSerializable()
class IntegerValue extends HranaValue {
  const IntegerValue(@Int64Converter() this.value, {String? $type})
      : $type = $type ?? 'integer',
        super._();
  factory IntegerValue.fromJson(Map<String, dynamic> json) =>
      _$IntegerValueFromJson(json);

  @Int64Converter()
  final Int64 value;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of HranaValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $IntegerValueCopyWith<IntegerValue> get copyWith =>
      _$IntegerValueCopyWithImpl<IntegerValue>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$IntegerValueToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is IntegerValue &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, value);
  }

  @override
  String toString() {
    return 'HranaValue.integer(value: $value)';
  }
}

/// @nodoc
abstract mixin class $IntegerValueCopyWith<$Res>
    implements $HranaValueCopyWith<$Res> {
  factory $IntegerValueCopyWith(
          IntegerValue value, $Res Function(IntegerValue) _then) =
      _$IntegerValueCopyWithImpl;
  @useResult
  $Res call({@Int64Converter() Int64 value});
}

/// @nodoc
class _$IntegerValueCopyWithImpl<$Res> implements $IntegerValueCopyWith<$Res> {
  _$IntegerValueCopyWithImpl(this._self, this._then);

  final IntegerValue _self;
  final $Res Function(IntegerValue) _then;

  /// Create a copy of HranaValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
  }) {
    return _then(IntegerValue(
      null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as Int64,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class FloatValue extends HranaValue {
  const FloatValue(this.value, {String? $type})
      : $type = $type ?? 'float',
        super._();
  factory FloatValue.fromJson(Map<String, dynamic> json) =>
      _$FloatValueFromJson(json);

  final double value;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of HranaValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FloatValueCopyWith<FloatValue> get copyWith =>
      _$FloatValueCopyWithImpl<FloatValue>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FloatValueToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FloatValue &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, value);
  }

  @override
  String toString() {
    return 'HranaValue.float(value: $value)';
  }
}

/// @nodoc
abstract mixin class $FloatValueCopyWith<$Res>
    implements $HranaValueCopyWith<$Res> {
  factory $FloatValueCopyWith(
          FloatValue value, $Res Function(FloatValue) _then) =
      _$FloatValueCopyWithImpl;
  @useResult
  $Res call({double value});
}

/// @nodoc
class _$FloatValueCopyWithImpl<$Res> implements $FloatValueCopyWith<$Res> {
  _$FloatValueCopyWithImpl(this._self, this._then);

  final FloatValue _self;
  final $Res Function(FloatValue) _then;

  /// Create a copy of HranaValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
  }) {
    return _then(FloatValue(
      null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class TextValue extends HranaValue {
  const TextValue(this.value, {String? $type})
      : $type = $type ?? 'text',
        super._();
  factory TextValue.fromJson(Map<String, dynamic> json) =>
      _$TextValueFromJson(json);

  final String value;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of HranaValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TextValueCopyWith<TextValue> get copyWith =>
      _$TextValueCopyWithImpl<TextValue>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TextValueToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TextValue &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, value);
  }

  @override
  String toString() {
    return 'HranaValue.text(value: $value)';
  }
}

/// @nodoc
abstract mixin class $TextValueCopyWith<$Res>
    implements $HranaValueCopyWith<$Res> {
  factory $TextValueCopyWith(TextValue value, $Res Function(TextValue) _then) =
      _$TextValueCopyWithImpl;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$TextValueCopyWithImpl<$Res> implements $TextValueCopyWith<$Res> {
  _$TextValueCopyWithImpl(this._self, this._then);

  final TextValue _self;
  final $Res Function(TextValue) _then;

  /// Create a copy of HranaValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
  }) {
    return _then(TextValue(
      null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class BlobValue extends HranaValue {
  const BlobValue(@Uint8ListConverter() @JsonKey(name: 'base64') this.value,
      {String? $type})
      : $type = $type ?? 'blob',
        super._();
  factory BlobValue.fromJson(Map<String, dynamic> json) =>
      _$BlobValueFromJson(json);

  @Uint8ListConverter()
  @JsonKey(name: 'base64')
  final Uint8List value;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of HranaValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BlobValueCopyWith<BlobValue> get copyWith =>
      _$BlobValueCopyWithImpl<BlobValue>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BlobValueToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BlobValue &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, const DeepCollectionEquality().hash(value));
  }

  @override
  String toString() {
    return 'HranaValue.blob(value: $value)';
  }
}

/// @nodoc
abstract mixin class $BlobValueCopyWith<$Res>
    implements $HranaValueCopyWith<$Res> {
  factory $BlobValueCopyWith(BlobValue value, $Res Function(BlobValue) _then) =
      _$BlobValueCopyWithImpl;
  @useResult
  $Res call({@Uint8ListConverter() @JsonKey(name: 'base64') Uint8List value});
}

/// @nodoc
class _$BlobValueCopyWithImpl<$Res> implements $BlobValueCopyWith<$Res> {
  _$BlobValueCopyWithImpl(this._self, this._then);

  final BlobValue _self;
  final $Res Function(BlobValue) _then;

  /// Create a copy of HranaValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
  }) {
    return _then(BlobValue(
      null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc
mixin _$StmtResult {
  List<Col> get cols;
  List<List<HranaValue>> get rows;
  int get affectedRowCount;
  @Int64Converter()
  Int64? get lastInsertRowid;
  String? get replicationIndex;
  int get rowsRead;
  int get rowsWritten;
  double get queryDurationMs;

  /// Create a copy of StmtResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StmtResultCopyWith<StmtResult> get copyWith =>
      _$StmtResultCopyWithImpl<StmtResult>(this as StmtResult, _$identity);

  /// Serializes this StmtResult to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as StmtResult;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StmtResult &&
            const DeepCollectionEquality().equals(other.cols, _this.cols) &&
            const DeepCollectionEquality().equals(other.rows, _this.rows) &&
            (identical(other.affectedRowCount, _this.affectedRowCount) ||
                other.affectedRowCount == _this.affectedRowCount) &&
            (identical(other.lastInsertRowid, _this.lastInsertRowid) ||
                other.lastInsertRowid == _this.lastInsertRowid) &&
            (identical(other.replicationIndex, _this.replicationIndex) ||
                other.replicationIndex == _this.replicationIndex) &&
            (identical(other.rowsRead, _this.rowsRead) ||
                other.rowsRead == _this.rowsRead) &&
            (identical(other.rowsWritten, _this.rowsWritten) ||
                other.rowsWritten == _this.rowsWritten) &&
            (identical(other.queryDurationMs, _this.queryDurationMs) ||
                other.queryDurationMs == _this.queryDurationMs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as StmtResult;
    return Object.hash(
        runtimeType,
        const DeepCollectionEquality().hash(_this.cols),
        const DeepCollectionEquality().hash(_this.rows),
        _this.affectedRowCount,
        _this.lastInsertRowid,
        _this.replicationIndex,
        _this.rowsRead,
        _this.rowsWritten,
        _this.queryDurationMs);
  }

  @override
  String toString() {
    final _this = this as StmtResult;
    return 'StmtResult(cols: ${_this.cols}, rows: ${_this.rows}, affectedRowCount: ${_this.affectedRowCount}, lastInsertRowid: ${_this.lastInsertRowid}, replicationIndex: ${_this.replicationIndex}, rowsRead: ${_this.rowsRead}, rowsWritten: ${_this.rowsWritten}, queryDurationMs: ${_this.queryDurationMs})';
  }
}

/// @nodoc
abstract mixin class $StmtResultCopyWith<$Res> {
  factory $StmtResultCopyWith(
          StmtResult value, $Res Function(StmtResult) _then) =
      _$StmtResultCopyWithImpl;
  @useResult
  $Res call(
      {List<Col> cols,
      List<List<HranaValue>> rows,
      int affectedRowCount,
      @Int64Converter() Int64? lastInsertRowid,
      String? replicationIndex,
      int rowsRead,
      int rowsWritten,
      double queryDurationMs});
}

/// @nodoc
class _$StmtResultCopyWithImpl<$Res> implements $StmtResultCopyWith<$Res> {
  _$StmtResultCopyWithImpl(this._self, this._then);

  final StmtResult _self;
  final $Res Function(StmtResult) _then;

  /// Create a copy of StmtResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cols = null,
    Object? rows = null,
    Object? affectedRowCount = null,
    Object? lastInsertRowid = freezed,
    Object? replicationIndex = freezed,
    Object? rowsRead = null,
    Object? rowsWritten = null,
    Object? queryDurationMs = null,
  }) {
    return _then(StmtResult(
      cols: null == cols
          ? _self.cols
          : cols // ignore: cast_nullable_to_non_nullable
              as List<Col>,
      rows: null == rows
          ? _self.rows
          : rows // ignore: cast_nullable_to_non_nullable
              as List<List<HranaValue>>,
      affectedRowCount: null == affectedRowCount
          ? _self.affectedRowCount
          : affectedRowCount // ignore: cast_nullable_to_non_nullable
              as int,
      lastInsertRowid: freezed == lastInsertRowid
          ? _self.lastInsertRowid
          : lastInsertRowid // ignore: cast_nullable_to_non_nullable
              as Int64?,
      replicationIndex: freezed == replicationIndex
          ? _self.replicationIndex
          : replicationIndex // ignore: cast_nullable_to_non_nullable
              as String?,
      rowsRead: null == rowsRead
          ? _self.rowsRead
          : rowsRead // ignore: cast_nullable_to_non_nullable
              as int,
      rowsWritten: null == rowsWritten
          ? _self.rowsWritten
          : rowsWritten // ignore: cast_nullable_to_non_nullable
              as int,
      queryDurationMs: null == queryDurationMs
          ? _self.queryDurationMs
          : queryDurationMs // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// Adds pattern-matching-related methods to [StmtResult].
extension StmtResultPatterns on StmtResult {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_StmtResult value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StmtResult() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_StmtResult value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StmtResult():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_StmtResult value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StmtResult() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            List<Col> cols,
            List<List<HranaValue>> rows,
            int affectedRowCount,
            @Int64Converter() Int64? lastInsertRowid,
            String? replicationIndex,
            int rowsRead,
            int rowsWritten,
            double queryDurationMs)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StmtResult() when $default != null:
        return $default(
            _that.cols,
            _that.rows,
            _that.affectedRowCount,
            _that.lastInsertRowid,
            _that.replicationIndex,
            _that.rowsRead,
            _that.rowsWritten,
            _that.queryDurationMs);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            List<Col> cols,
            List<List<HranaValue>> rows,
            int affectedRowCount,
            @Int64Converter() Int64? lastInsertRowid,
            String? replicationIndex,
            int rowsRead,
            int rowsWritten,
            double queryDurationMs)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StmtResult():
        return $default(
            _that.cols,
            _that.rows,
            _that.affectedRowCount,
            _that.lastInsertRowid,
            _that.replicationIndex,
            _that.rowsRead,
            _that.rowsWritten,
            _that.queryDurationMs);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            List<Col> cols,
            List<List<HranaValue>> rows,
            int affectedRowCount,
            @Int64Converter() Int64? lastInsertRowid,
            String? replicationIndex,
            int rowsRead,
            int rowsWritten,
            double queryDurationMs)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StmtResult() when $default != null:
        return $default(
            _that.cols,
            _that.rows,
            _that.affectedRowCount,
            _that.lastInsertRowid,
            _that.replicationIndex,
            _that.rowsRead,
            _that.rowsWritten,
            _that.queryDurationMs);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _StmtResult extends StmtResult {
  const _StmtResult(
      {List<Col> cols = const [],
      List<List<HranaValue>> rows = const [],
      required this.affectedRowCount,
      @Int64Converter() this.lastInsertRowid,
      this.replicationIndex,
      required this.rowsRead,
      required this.rowsWritten,
      required this.queryDurationMs})
      : _cols = cols,
        _rows = rows,
        super._();
  factory _StmtResult.fromJson(Map<String, dynamic> json) =>
      _$StmtResultFromJson(json);

  final List<Col> _cols;
  @override
  @JsonKey()
  List<Col> get cols {
    if (_cols is EqualUnmodifiableListView) return _cols;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cols);
  }

  final List<List<HranaValue>> _rows;
  @override
  @JsonKey()
  List<List<HranaValue>> get rows {
    if (_rows is EqualUnmodifiableListView) return _rows;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rows);
  }

  @override
  final int affectedRowCount;
  @override
  @Int64Converter()
  final Int64? lastInsertRowid;
  @override
  final String? replicationIndex;
  @override
  final int rowsRead;
  @override
  final int rowsWritten;
  @override
  final double queryDurationMs;

  /// Create a copy of StmtResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StmtResultCopyWith<_StmtResult> get copyWith =>
      __$StmtResultCopyWithImpl<_StmtResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StmtResultToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StmtResult &&
            const DeepCollectionEquality().equals(other.cols, _cols) &&
            const DeepCollectionEquality().equals(other.rows, _rows) &&
            (identical(other.affectedRowCount, affectedRowCount) ||
                other.affectedRowCount == affectedRowCount) &&
            (identical(other.lastInsertRowid, lastInsertRowid) ||
                other.lastInsertRowid == lastInsertRowid) &&
            (identical(other.replicationIndex, replicationIndex) ||
                other.replicationIndex == replicationIndex) &&
            (identical(other.rowsRead, rowsRead) ||
                other.rowsRead == rowsRead) &&
            (identical(other.rowsWritten, rowsWritten) ||
                other.rowsWritten == rowsWritten) &&
            (identical(other.queryDurationMs, queryDurationMs) ||
                other.queryDurationMs == queryDurationMs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(
        runtimeType,
        const DeepCollectionEquality().hash(_cols),
        const DeepCollectionEquality().hash(_rows),
        affectedRowCount,
        lastInsertRowid,
        replicationIndex,
        rowsRead,
        rowsWritten,
        queryDurationMs);
  }

  @override
  String toString() {
    return 'StmtResult(cols: $cols, rows: $rows, affectedRowCount: $affectedRowCount, lastInsertRowid: $lastInsertRowid, replicationIndex: $replicationIndex, rowsRead: $rowsRead, rowsWritten: $rowsWritten, queryDurationMs: $queryDurationMs)';
  }
}

/// @nodoc
abstract mixin class _$StmtResultCopyWith<$Res>
    implements $StmtResultCopyWith<$Res> {
  factory _$StmtResultCopyWith(
          _StmtResult value, $Res Function(_StmtResult) _then) =
      __$StmtResultCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<Col> cols,
      List<List<HranaValue>> rows,
      int affectedRowCount,
      @Int64Converter() Int64? lastInsertRowid,
      String? replicationIndex,
      int rowsRead,
      int rowsWritten,
      double queryDurationMs});
}

/// @nodoc
class __$StmtResultCopyWithImpl<$Res> implements _$StmtResultCopyWith<$Res> {
  __$StmtResultCopyWithImpl(this._self, this._then);

  final _StmtResult _self;
  final $Res Function(_StmtResult) _then;

  /// Create a copy of StmtResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? cols = null,
    Object? rows = null,
    Object? affectedRowCount = null,
    Object? lastInsertRowid = freezed,
    Object? replicationIndex = freezed,
    Object? rowsRead = null,
    Object? rowsWritten = null,
    Object? queryDurationMs = null,
  }) {
    return _then(_StmtResult(
      cols: null == cols
          ? _self._cols
          : cols // ignore: cast_nullable_to_non_nullable
              as List<Col>,
      rows: null == rows
          ? _self._rows
          : rows // ignore: cast_nullable_to_non_nullable
              as List<List<HranaValue>>,
      affectedRowCount: null == affectedRowCount
          ? _self.affectedRowCount
          : affectedRowCount // ignore: cast_nullable_to_non_nullable
              as int,
      lastInsertRowid: freezed == lastInsertRowid
          ? _self.lastInsertRowid
          : lastInsertRowid // ignore: cast_nullable_to_non_nullable
              as Int64?,
      replicationIndex: freezed == replicationIndex
          ? _self.replicationIndex
          : replicationIndex // ignore: cast_nullable_to_non_nullable
              as String?,
      rowsRead: null == rowsRead
          ? _self.rowsRead
          : rowsRead // ignore: cast_nullable_to_non_nullable
              as int,
      rowsWritten: null == rowsWritten
          ? _self.rowsWritten
          : rowsWritten // ignore: cast_nullable_to_non_nullable
              as int,
      queryDurationMs: null == queryDurationMs
          ? _self.queryDurationMs
          : queryDurationMs // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
mixin _$Col {
  String? get name;
  String? get decltype;

  /// Create a copy of Col
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ColCopyWith<Col> get copyWith =>
      _$ColCopyWithImpl<Col>(this as Col, _$identity);

  /// Serializes this Col to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as Col;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Col &&
            (identical(other.name, _this.name) || other.name == _this.name) &&
            (identical(other.decltype, _this.decltype) ||
                other.decltype == _this.decltype));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as Col;
    return Object.hash(runtimeType, _this.name, _this.decltype);
  }

  @override
  String toString() {
    final _this = this as Col;
    return 'Col(name: ${_this.name}, decltype: ${_this.decltype})';
  }
}

/// @nodoc
abstract mixin class $ColCopyWith<$Res> {
  factory $ColCopyWith(Col value, $Res Function(Col) _then) = _$ColCopyWithImpl;
  @useResult
  $Res call({String? name, String? decltype});
}

/// @nodoc
class _$ColCopyWithImpl<$Res> implements $ColCopyWith<$Res> {
  _$ColCopyWithImpl(this._self, this._then);

  final Col _self;
  final $Res Function(Col) _then;

  /// Create a copy of Col
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? decltype = freezed,
  }) {
    return _then(Col(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      decltype: freezed == decltype
          ? _self.decltype
          : decltype // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [Col].
extension ColPatterns on Col {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Col value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Col() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Col value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Col():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Col value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Col() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? name, String? decltype)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Col() when $default != null:
        return $default(_that.name, _that.decltype);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? name, String? decltype) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Col():
        return $default(_that.name, _that.decltype);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? name, String? decltype)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Col() when $default != null:
        return $default(_that.name, _that.decltype);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Col extends Col {
  const _Col({this.name, this.decltype}) : super._();
  factory _Col.fromJson(Map<String, dynamic> json) => _$ColFromJson(json);

  @override
  final String? name;
  @override
  final String? decltype;

  /// Create a copy of Col
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ColCopyWith<_Col> get copyWith =>
      __$ColCopyWithImpl<_Col>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ColToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Col &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.decltype, decltype) ||
                other.decltype == decltype));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, name, decltype);
  }

  @override
  String toString() {
    return 'Col(name: $name, decltype: $decltype)';
  }
}

/// @nodoc
abstract mixin class _$ColCopyWith<$Res> implements $ColCopyWith<$Res> {
  factory _$ColCopyWith(_Col value, $Res Function(_Col) _then) =
      __$ColCopyWithImpl;
  @override
  @useResult
  $Res call({String? name, String? decltype});
}

/// @nodoc
class __$ColCopyWithImpl<$Res> implements _$ColCopyWith<$Res> {
  __$ColCopyWithImpl(this._self, this._then);

  final _Col _self;
  final $Res Function(_Col) _then;

  /// Create a copy of Col
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = freezed,
    Object? decltype = freezed,
  }) {
    return _then(_Col(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      decltype: freezed == decltype
          ? _self.decltype
          : decltype // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$Batch {
  List<BatchStep> get steps;

  /// Create a copy of Batch
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BatchCopyWith<Batch> get copyWith =>
      _$BatchCopyWithImpl<Batch>(this as Batch, _$identity);

  /// Serializes this Batch to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as Batch;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Batch &&
            const DeepCollectionEquality().equals(other.steps, _this.steps));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as Batch;
    return Object.hash(
        runtimeType, const DeepCollectionEquality().hash(_this.steps));
  }

  @override
  String toString() {
    final _this = this as Batch;
    return 'Batch(steps: ${_this.steps})';
  }
}

/// @nodoc
abstract mixin class $BatchCopyWith<$Res> {
  factory $BatchCopyWith(Batch value, $Res Function(Batch) _then) =
      _$BatchCopyWithImpl;
  @useResult
  $Res call({List<BatchStep> steps});
}

/// @nodoc
class _$BatchCopyWithImpl<$Res> implements $BatchCopyWith<$Res> {
  _$BatchCopyWithImpl(this._self, this._then);

  final Batch _self;
  final $Res Function(Batch) _then;

  /// Create a copy of Batch
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? steps = null,
  }) {
    return _then(Batch(
      steps: null == steps
          ? _self.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<BatchStep>,
    ));
  }
}

/// Adds pattern-matching-related methods to [Batch].
extension BatchPatterns on Batch {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Batch value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Batch() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Batch value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Batch():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Batch value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Batch() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<BatchStep> steps)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Batch() when $default != null:
        return $default(_that.steps);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<BatchStep> steps) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Batch():
        return $default(_that.steps);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<BatchStep> steps)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Batch() when $default != null:
        return $default(_that.steps);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Batch extends Batch {
  const _Batch({required List<BatchStep> steps})
      : _steps = steps,
        super._();
  factory _Batch.fromJson(Map<String, dynamic> json) => _$BatchFromJson(json);

  final List<BatchStep> _steps;
  @override
  List<BatchStep> get steps {
    if (_steps is EqualUnmodifiableListView) return _steps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_steps);
  }

  /// Create a copy of Batch
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BatchCopyWith<_Batch> get copyWith =>
      __$BatchCopyWithImpl<_Batch>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BatchToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Batch &&
            const DeepCollectionEquality().equals(other.steps, _steps));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(
        runtimeType, const DeepCollectionEquality().hash(_steps));
  }

  @override
  String toString() {
    return 'Batch(steps: $steps)';
  }
}

/// @nodoc
abstract mixin class _$BatchCopyWith<$Res> implements $BatchCopyWith<$Res> {
  factory _$BatchCopyWith(_Batch value, $Res Function(_Batch) _then) =
      __$BatchCopyWithImpl;
  @override
  @useResult
  $Res call({List<BatchStep> steps});
}

/// @nodoc
class __$BatchCopyWithImpl<$Res> implements _$BatchCopyWith<$Res> {
  __$BatchCopyWithImpl(this._self, this._then);

  final _Batch _self;
  final $Res Function(_Batch) _then;

  /// Create a copy of Batch
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? steps = null,
  }) {
    return _then(_Batch(
      steps: null == steps
          ? _self._steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<BatchStep>,
    ));
  }
}

/// @nodoc
mixin _$BatchStep {
  BatchCond? get condition;
  Stmt get stmt;

  /// Create a copy of BatchStep
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BatchStepCopyWith<BatchStep> get copyWith =>
      _$BatchStepCopyWithImpl<BatchStep>(this as BatchStep, _$identity);

  /// Serializes this BatchStep to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as BatchStep;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BatchStep &&
            (identical(other.condition, _this.condition) ||
                other.condition == _this.condition) &&
            (identical(other.stmt, _this.stmt) || other.stmt == _this.stmt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as BatchStep;
    return Object.hash(runtimeType, _this.condition, _this.stmt);
  }

  @override
  String toString() {
    final _this = this as BatchStep;
    return 'BatchStep(condition: ${_this.condition}, stmt: ${_this.stmt})';
  }
}

/// @nodoc
abstract mixin class $BatchStepCopyWith<$Res> {
  factory $BatchStepCopyWith(BatchStep value, $Res Function(BatchStep) _then) =
      _$BatchStepCopyWithImpl;
  @useResult
  $Res call({BatchCond? condition, Stmt stmt});

  $BatchCondCopyWith<$Res>? get condition;
  $StmtCopyWith<$Res> get stmt;
}

/// @nodoc
class _$BatchStepCopyWithImpl<$Res> implements $BatchStepCopyWith<$Res> {
  _$BatchStepCopyWithImpl(this._self, this._then);

  final BatchStep _self;
  final $Res Function(BatchStep) _then;

  /// Create a copy of BatchStep
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? condition = freezed,
    Object? stmt = null,
  }) {
    return _then(BatchStep(
      condition: freezed == condition
          ? _self.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as BatchCond?,
      stmt: null == stmt
          ? _self.stmt
          : stmt // ignore: cast_nullable_to_non_nullable
              as Stmt,
    ));
  }

  /// Create a copy of BatchStep
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BatchCondCopyWith<$Res>? get condition {
    if (_self.condition == null) {
      return null;
    }

    return $BatchCondCopyWith<$Res>(_self.condition!, (value) {
      return _then(_self.copyWith(condition: value));
    });
  }

  /// Create a copy of BatchStep
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StmtCopyWith<$Res> get stmt {
    return $StmtCopyWith<$Res>(_self.stmt, (value) {
      return _then(_self.copyWith(stmt: value));
    });
  }
}

/// Adds pattern-matching-related methods to [BatchStep].
extension BatchStepPatterns on BatchStep {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BatchStep value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BatchStep() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BatchStep value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BatchStep():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BatchStep value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BatchStep() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(BatchCond? condition, Stmt stmt)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BatchStep() when $default != null:
        return $default(_that.condition, _that.stmt);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(BatchCond? condition, Stmt stmt) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BatchStep():
        return $default(_that.condition, _that.stmt);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(BatchCond? condition, Stmt stmt)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BatchStep() when $default != null:
        return $default(_that.condition, _that.stmt);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _BatchStep extends BatchStep {
  const _BatchStep({this.condition, required this.stmt}) : super._();
  factory _BatchStep.fromJson(Map<String, dynamic> json) =>
      _$BatchStepFromJson(json);

  @override
  final BatchCond? condition;
  @override
  final Stmt stmt;

  /// Create a copy of BatchStep
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BatchStepCopyWith<_BatchStep> get copyWith =>
      __$BatchStepCopyWithImpl<_BatchStep>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BatchStepToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BatchStep &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.stmt, stmt) || other.stmt == stmt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, condition, stmt);
  }

  @override
  String toString() {
    return 'BatchStep(condition: $condition, stmt: $stmt)';
  }
}

/// @nodoc
abstract mixin class _$BatchStepCopyWith<$Res>
    implements $BatchStepCopyWith<$Res> {
  factory _$BatchStepCopyWith(
          _BatchStep value, $Res Function(_BatchStep) _then) =
      __$BatchStepCopyWithImpl;
  @override
  @useResult
  $Res call({BatchCond? condition, Stmt stmt});

  @override
  $BatchCondCopyWith<$Res>? get condition;
  @override
  $StmtCopyWith<$Res> get stmt;
}

/// @nodoc
class __$BatchStepCopyWithImpl<$Res> implements _$BatchStepCopyWith<$Res> {
  __$BatchStepCopyWithImpl(this._self, this._then);

  final _BatchStep _self;
  final $Res Function(_BatchStep) _then;

  /// Create a copy of BatchStep
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? condition = freezed,
    Object? stmt = null,
  }) {
    return _then(_BatchStep(
      condition: freezed == condition
          ? _self.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as BatchCond?,
      stmt: null == stmt
          ? _self.stmt
          : stmt // ignore: cast_nullable_to_non_nullable
              as Stmt,
    ));
  }

  /// Create a copy of BatchStep
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BatchCondCopyWith<$Res>? get condition {
    if (_self.condition == null) {
      return null;
    }

    return $BatchCondCopyWith<$Res>(_self.condition!, (value) {
      return _then(_self.copyWith(condition: value));
    });
  }

  /// Create a copy of BatchStep
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StmtCopyWith<$Res> get stmt {
    return $StmtCopyWith<$Res>(_self.stmt, (value) {
      return _then(_self.copyWith(stmt: value));
    });
  }
}

BatchCond _$BatchCondFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'ok':
      return BatchCondStepOk.fromJson(json);
    case 'error':
      return BatchCondStepError.fromJson(json);
    case 'not':
      return BatchCondNot.fromJson(json);
    case 'and':
      return BatchCondAnd.fromJson(json);
    case 'or':
      return BatchCondOr.fromJson(json);
    case 'is_autocommit':
      return BatchCondIsAutocommit.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'type', 'BatchCond', 'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$BatchCond {
  /// Serializes this BatchCond to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is BatchCond);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BatchCond()';
  }
}

/// @nodoc
class $BatchCondCopyWith<$Res> {
  $BatchCondCopyWith(BatchCond _, $Res Function(BatchCond) __);
}

/// Adds pattern-matching-related methods to [BatchCond].
extension BatchCondPatterns on BatchCond {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BatchCondStepOk value)? stepOk,
    TResult Function(BatchCondStepError value)? stepError,
    TResult Function(BatchCondNot value)? not,
    TResult Function(BatchCondAnd value)? and,
    TResult Function(BatchCondOr value)? or,
    TResult Function(BatchCondIsAutocommit value)? isAutocommit,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case BatchCondStepOk() when stepOk != null:
        return stepOk(_that);
      case BatchCondStepError() when stepError != null:
        return stepError(_that);
      case BatchCondNot() when not != null:
        return not(_that);
      case BatchCondAnd() when and != null:
        return and(_that);
      case BatchCondOr() when or != null:
        return or(_that);
      case BatchCondIsAutocommit() when isAutocommit != null:
        return isAutocommit(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BatchCondStepOk value) stepOk,
    required TResult Function(BatchCondStepError value) stepError,
    required TResult Function(BatchCondNot value) not,
    required TResult Function(BatchCondAnd value) and,
    required TResult Function(BatchCondOr value) or,
    required TResult Function(BatchCondIsAutocommit value) isAutocommit,
  }) {
    final _that = this;
    switch (_that) {
      case BatchCondStepOk():
        return stepOk(_that);
      case BatchCondStepError():
        return stepError(_that);
      case BatchCondNot():
        return not(_that);
      case BatchCondAnd():
        return and(_that);
      case BatchCondOr():
        return or(_that);
      case BatchCondIsAutocommit():
        return isAutocommit(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BatchCondStepOk value)? stepOk,
    TResult? Function(BatchCondStepError value)? stepError,
    TResult? Function(BatchCondNot value)? not,
    TResult? Function(BatchCondAnd value)? and,
    TResult? Function(BatchCondOr value)? or,
    TResult? Function(BatchCondIsAutocommit value)? isAutocommit,
  }) {
    final _that = this;
    switch (_that) {
      case BatchCondStepOk() when stepOk != null:
        return stepOk(_that);
      case BatchCondStepError() when stepError != null:
        return stepError(_that);
      case BatchCondNot() when not != null:
        return not(_that);
      case BatchCondAnd() when and != null:
        return and(_that);
      case BatchCondOr() when or != null:
        return or(_that);
      case BatchCondIsAutocommit() when isAutocommit != null:
        return isAutocommit(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int step)? stepOk,
    TResult Function(int step)? stepError,
    TResult Function(BatchCond cond)? not,
    TResult Function(List<BatchCond> conds)? and,
    TResult Function(List<BatchCond> conds)? or,
    TResult Function()? isAutocommit,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case BatchCondStepOk() when stepOk != null:
        return stepOk(_that.step);
      case BatchCondStepError() when stepError != null:
        return stepError(_that.step);
      case BatchCondNot() when not != null:
        return not(_that.cond);
      case BatchCondAnd() when and != null:
        return and(_that.conds);
      case BatchCondOr() when or != null:
        return or(_that.conds);
      case BatchCondIsAutocommit() when isAutocommit != null:
        return isAutocommit();
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int step) stepOk,
    required TResult Function(int step) stepError,
    required TResult Function(BatchCond cond) not,
    required TResult Function(List<BatchCond> conds) and,
    required TResult Function(List<BatchCond> conds) or,
    required TResult Function() isAutocommit,
  }) {
    final _that = this;
    switch (_that) {
      case BatchCondStepOk():
        return stepOk(_that.step);
      case BatchCondStepError():
        return stepError(_that.step);
      case BatchCondNot():
        return not(_that.cond);
      case BatchCondAnd():
        return and(_that.conds);
      case BatchCondOr():
        return or(_that.conds);
      case BatchCondIsAutocommit():
        return isAutocommit();
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int step)? stepOk,
    TResult? Function(int step)? stepError,
    TResult? Function(BatchCond cond)? not,
    TResult? Function(List<BatchCond> conds)? and,
    TResult? Function(List<BatchCond> conds)? or,
    TResult? Function()? isAutocommit,
  }) {
    final _that = this;
    switch (_that) {
      case BatchCondStepOk() when stepOk != null:
        return stepOk(_that.step);
      case BatchCondStepError() when stepError != null:
        return stepError(_that.step);
      case BatchCondNot() when not != null:
        return not(_that.cond);
      case BatchCondAnd() when and != null:
        return and(_that.conds);
      case BatchCondOr() when or != null:
        return or(_that.conds);
      case BatchCondIsAutocommit() when isAutocommit != null:
        return isAutocommit();
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class BatchCondStepOk extends BatchCond {
  const BatchCondStepOk(this.step, {String? $type})
      : $type = $type ?? 'ok',
        super._();
  factory BatchCondStepOk.fromJson(Map<String, dynamic> json) =>
      _$BatchCondStepOkFromJson(json);

  final int step;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of BatchCond
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BatchCondStepOkCopyWith<BatchCondStepOk> get copyWith =>
      _$BatchCondStepOkCopyWithImpl<BatchCondStepOk>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BatchCondStepOkToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BatchCondStepOk &&
            (identical(other.step, step) || other.step == step));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, step);
  }

  @override
  String toString() {
    return 'BatchCond.stepOk(step: $step)';
  }
}

/// @nodoc
abstract mixin class $BatchCondStepOkCopyWith<$Res>
    implements $BatchCondCopyWith<$Res> {
  factory $BatchCondStepOkCopyWith(
          BatchCondStepOk value, $Res Function(BatchCondStepOk) _then) =
      _$BatchCondStepOkCopyWithImpl;
  @useResult
  $Res call({int step});
}

/// @nodoc
class _$BatchCondStepOkCopyWithImpl<$Res>
    implements $BatchCondStepOkCopyWith<$Res> {
  _$BatchCondStepOkCopyWithImpl(this._self, this._then);

  final BatchCondStepOk _self;
  final $Res Function(BatchCondStepOk) _then;

  /// Create a copy of BatchCond
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? step = null,
  }) {
    return _then(BatchCondStepOk(
      null == step
          ? _self.step
          : step // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class BatchCondStepError extends BatchCond {
  const BatchCondStepError(this.step, {String? $type})
      : $type = $type ?? 'error',
        super._();
  factory BatchCondStepError.fromJson(Map<String, dynamic> json) =>
      _$BatchCondStepErrorFromJson(json);

  final int step;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of BatchCond
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BatchCondStepErrorCopyWith<BatchCondStepError> get copyWith =>
      _$BatchCondStepErrorCopyWithImpl<BatchCondStepError>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BatchCondStepErrorToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BatchCondStepError &&
            (identical(other.step, step) || other.step == step));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, step);
  }

  @override
  String toString() {
    return 'BatchCond.stepError(step: $step)';
  }
}

/// @nodoc
abstract mixin class $BatchCondStepErrorCopyWith<$Res>
    implements $BatchCondCopyWith<$Res> {
  factory $BatchCondStepErrorCopyWith(
          BatchCondStepError value, $Res Function(BatchCondStepError) _then) =
      _$BatchCondStepErrorCopyWithImpl;
  @useResult
  $Res call({int step});
}

/// @nodoc
class _$BatchCondStepErrorCopyWithImpl<$Res>
    implements $BatchCondStepErrorCopyWith<$Res> {
  _$BatchCondStepErrorCopyWithImpl(this._self, this._then);

  final BatchCondStepError _self;
  final $Res Function(BatchCondStepError) _then;

  /// Create a copy of BatchCond
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? step = null,
  }) {
    return _then(BatchCondStepError(
      null == step
          ? _self.step
          : step // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class BatchCondNot extends BatchCond {
  const BatchCondNot(this.cond, {String? $type})
      : $type = $type ?? 'not',
        super._();
  factory BatchCondNot.fromJson(Map<String, dynamic> json) =>
      _$BatchCondNotFromJson(json);

  final BatchCond cond;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of BatchCond
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BatchCondNotCopyWith<BatchCondNot> get copyWith =>
      _$BatchCondNotCopyWithImpl<BatchCondNot>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BatchCondNotToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BatchCondNot &&
            (identical(other.cond, cond) || other.cond == cond));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, cond);
  }

  @override
  String toString() {
    return 'BatchCond.not(cond: $cond)';
  }
}

/// @nodoc
abstract mixin class $BatchCondNotCopyWith<$Res>
    implements $BatchCondCopyWith<$Res> {
  factory $BatchCondNotCopyWith(
          BatchCondNot value, $Res Function(BatchCondNot) _then) =
      _$BatchCondNotCopyWithImpl;
  @useResult
  $Res call({BatchCond cond});

  $BatchCondCopyWith<$Res> get cond;
}

/// @nodoc
class _$BatchCondNotCopyWithImpl<$Res> implements $BatchCondNotCopyWith<$Res> {
  _$BatchCondNotCopyWithImpl(this._self, this._then);

  final BatchCondNot _self;
  final $Res Function(BatchCondNot) _then;

  /// Create a copy of BatchCond
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? cond = null,
  }) {
    return _then(BatchCondNot(
      null == cond
          ? _self.cond
          : cond // ignore: cast_nullable_to_non_nullable
              as BatchCond,
    ));
  }

  /// Create a copy of BatchCond
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BatchCondCopyWith<$Res> get cond {
    return $BatchCondCopyWith<$Res>(_self.cond, (value) {
      return _then(_self.copyWith(cond: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class BatchCondAnd extends BatchCond {
  const BatchCondAnd(List<BatchCond> conds, {String? $type})
      : _conds = conds,
        $type = $type ?? 'and',
        super._();
  factory BatchCondAnd.fromJson(Map<String, dynamic> json) =>
      _$BatchCondAndFromJson(json);

  final List<BatchCond> _conds;
  List<BatchCond> get conds {
    if (_conds is EqualUnmodifiableListView) return _conds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_conds);
  }

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of BatchCond
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BatchCondAndCopyWith<BatchCondAnd> get copyWith =>
      _$BatchCondAndCopyWithImpl<BatchCondAnd>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BatchCondAndToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BatchCondAnd &&
            const DeepCollectionEquality().equals(other.conds, _conds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(
        runtimeType, const DeepCollectionEquality().hash(_conds));
  }

  @override
  String toString() {
    return 'BatchCond.and(conds: $conds)';
  }
}

/// @nodoc
abstract mixin class $BatchCondAndCopyWith<$Res>
    implements $BatchCondCopyWith<$Res> {
  factory $BatchCondAndCopyWith(
          BatchCondAnd value, $Res Function(BatchCondAnd) _then) =
      _$BatchCondAndCopyWithImpl;
  @useResult
  $Res call({List<BatchCond> conds});
}

/// @nodoc
class _$BatchCondAndCopyWithImpl<$Res> implements $BatchCondAndCopyWith<$Res> {
  _$BatchCondAndCopyWithImpl(this._self, this._then);

  final BatchCondAnd _self;
  final $Res Function(BatchCondAnd) _then;

  /// Create a copy of BatchCond
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? conds = null,
  }) {
    return _then(BatchCondAnd(
      null == conds
          ? _self._conds
          : conds // ignore: cast_nullable_to_non_nullable
              as List<BatchCond>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class BatchCondOr extends BatchCond {
  const BatchCondOr(List<BatchCond> conds, {String? $type})
      : _conds = conds,
        $type = $type ?? 'or',
        super._();
  factory BatchCondOr.fromJson(Map<String, dynamic> json) =>
      _$BatchCondOrFromJson(json);

  final List<BatchCond> _conds;
  List<BatchCond> get conds {
    if (_conds is EqualUnmodifiableListView) return _conds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_conds);
  }

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of BatchCond
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BatchCondOrCopyWith<BatchCondOr> get copyWith =>
      _$BatchCondOrCopyWithImpl<BatchCondOr>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BatchCondOrToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BatchCondOr &&
            const DeepCollectionEquality().equals(other.conds, _conds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(
        runtimeType, const DeepCollectionEquality().hash(_conds));
  }

  @override
  String toString() {
    return 'BatchCond.or(conds: $conds)';
  }
}

/// @nodoc
abstract mixin class $BatchCondOrCopyWith<$Res>
    implements $BatchCondCopyWith<$Res> {
  factory $BatchCondOrCopyWith(
          BatchCondOr value, $Res Function(BatchCondOr) _then) =
      _$BatchCondOrCopyWithImpl;
  @useResult
  $Res call({List<BatchCond> conds});
}

/// @nodoc
class _$BatchCondOrCopyWithImpl<$Res> implements $BatchCondOrCopyWith<$Res> {
  _$BatchCondOrCopyWithImpl(this._self, this._then);

  final BatchCondOr _self;
  final $Res Function(BatchCondOr) _then;

  /// Create a copy of BatchCond
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? conds = null,
  }) {
    return _then(BatchCondOr(
      null == conds
          ? _self._conds
          : conds // ignore: cast_nullable_to_non_nullable
              as List<BatchCond>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class BatchCondIsAutocommit extends BatchCond {
  const BatchCondIsAutocommit({String? $type})
      : $type = $type ?? 'is_autocommit',
        super._();
  factory BatchCondIsAutocommit.fromJson(Map<String, dynamic> json) =>
      _$BatchCondIsAutocommitFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$BatchCondIsAutocommitToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is BatchCondIsAutocommit);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BatchCond.isAutocommit()';
  }
}

/// @nodoc
mixin _$BatchResult {
  List<StmtResult?> get stepResults;
  List<StreamError?> get stepErrors;

  /// Create a copy of BatchResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BatchResultCopyWith<BatchResult> get copyWith =>
      _$BatchResultCopyWithImpl<BatchResult>(this as BatchResult, _$identity);

  /// Serializes this BatchResult to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as BatchResult;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BatchResult &&
            const DeepCollectionEquality()
                .equals(other.stepResults, _this.stepResults) &&
            const DeepCollectionEquality()
                .equals(other.stepErrors, _this.stepErrors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as BatchResult;
    return Object.hash(
        runtimeType,
        const DeepCollectionEquality().hash(_this.stepResults),
        const DeepCollectionEquality().hash(_this.stepErrors));
  }

  @override
  String toString() {
    final _this = this as BatchResult;
    return 'BatchResult(stepResults: ${_this.stepResults}, stepErrors: ${_this.stepErrors})';
  }
}

/// @nodoc
abstract mixin class $BatchResultCopyWith<$Res> {
  factory $BatchResultCopyWith(
          BatchResult value, $Res Function(BatchResult) _then) =
      _$BatchResultCopyWithImpl;
  @useResult
  $Res call({List<StmtResult?> stepResults, List<StreamError?> stepErrors});
}

/// @nodoc
class _$BatchResultCopyWithImpl<$Res> implements $BatchResultCopyWith<$Res> {
  _$BatchResultCopyWithImpl(this._self, this._then);

  final BatchResult _self;
  final $Res Function(BatchResult) _then;

  /// Create a copy of BatchResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stepResults = null,
    Object? stepErrors = null,
  }) {
    return _then(BatchResult(
      stepResults: null == stepResults
          ? _self.stepResults
          : stepResults // ignore: cast_nullable_to_non_nullable
              as List<StmtResult?>,
      stepErrors: null == stepErrors
          ? _self.stepErrors
          : stepErrors // ignore: cast_nullable_to_non_nullable
              as List<StreamError?>,
    ));
  }
}

/// Adds pattern-matching-related methods to [BatchResult].
extension BatchResultPatterns on BatchResult {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BatchResult value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BatchResult() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BatchResult value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BatchResult():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BatchResult value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BatchResult() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            List<StmtResult?> stepResults, List<StreamError?> stepErrors)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BatchResult() when $default != null:
        return $default(_that.stepResults, _that.stepErrors);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            List<StmtResult?> stepResults, List<StreamError?> stepErrors)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BatchResult():
        return $default(_that.stepResults, _that.stepErrors);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            List<StmtResult?> stepResults, List<StreamError?> stepErrors)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BatchResult() when $default != null:
        return $default(_that.stepResults, _that.stepErrors);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _BatchResult extends BatchResult {
  const _BatchResult(
      {required List<StmtResult?> stepResults,
      required List<StreamError?> stepErrors})
      : _stepResults = stepResults,
        _stepErrors = stepErrors,
        super._();
  factory _BatchResult.fromJson(Map<String, dynamic> json) =>
      _$BatchResultFromJson(json);

  final List<StmtResult?> _stepResults;
  @override
  List<StmtResult?> get stepResults {
    if (_stepResults is EqualUnmodifiableListView) return _stepResults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stepResults);
  }

  final List<StreamError?> _stepErrors;
  @override
  List<StreamError?> get stepErrors {
    if (_stepErrors is EqualUnmodifiableListView) return _stepErrors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stepErrors);
  }

  /// Create a copy of BatchResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BatchResultCopyWith<_BatchResult> get copyWith =>
      __$BatchResultCopyWithImpl<_BatchResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BatchResultToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BatchResult &&
            const DeepCollectionEquality()
                .equals(other.stepResults, _stepResults) &&
            const DeepCollectionEquality()
                .equals(other.stepErrors, _stepErrors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(
        runtimeType,
        const DeepCollectionEquality().hash(_stepResults),
        const DeepCollectionEquality().hash(_stepErrors));
  }

  @override
  String toString() {
    return 'BatchResult(stepResults: $stepResults, stepErrors: $stepErrors)';
  }
}

/// @nodoc
abstract mixin class _$BatchResultCopyWith<$Res>
    implements $BatchResultCopyWith<$Res> {
  factory _$BatchResultCopyWith(
          _BatchResult value, $Res Function(_BatchResult) _then) =
      __$BatchResultCopyWithImpl;
  @override
  @useResult
  $Res call({List<StmtResult?> stepResults, List<StreamError?> stepErrors});
}

/// @nodoc
class __$BatchResultCopyWithImpl<$Res> implements _$BatchResultCopyWith<$Res> {
  __$BatchResultCopyWithImpl(this._self, this._then);

  final _BatchResult _self;
  final $Res Function(_BatchResult) _then;

  /// Create a copy of BatchResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? stepResults = null,
    Object? stepErrors = null,
  }) {
    return _then(_BatchResult(
      stepResults: null == stepResults
          ? _self._stepResults
          : stepResults // ignore: cast_nullable_to_non_nullable
              as List<StmtResult?>,
      stepErrors: null == stepErrors
          ? _self._stepErrors
          : stepErrors // ignore: cast_nullable_to_non_nullable
              as List<StreamError?>,
    ));
  }
}

CursorEntry _$CursorEntryFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'step_begin':
      return StepBeginEntry.fromJson(json);
    case 'step_end':
      return StepEndEntry.fromJson(json);
    case 'step_error':
      return StepErrorEntry.fromJson(json);
    case 'row':
      return CursorEntryRow.fromJson(json);
    case 'error':
      return CursorEntryError.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'type', 'CursorEntry', 'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$CursorEntry {
  /// Serializes this CursorEntry to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CursorEntry);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CursorEntry()';
  }
}

/// @nodoc
class $CursorEntryCopyWith<$Res> {
  $CursorEntryCopyWith(CursorEntry _, $Res Function(CursorEntry) __);
}

/// Adds pattern-matching-related methods to [CursorEntry].
extension CursorEntryPatterns on CursorEntry {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StepBeginEntry value)? stepBegin,
    TResult Function(StepEndEntry value)? stepEnd,
    TResult Function(StepErrorEntry value)? stepError,
    TResult Function(CursorEntryRow value)? row,
    TResult Function(CursorEntryError value)? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case StepBeginEntry() when stepBegin != null:
        return stepBegin(_that);
      case StepEndEntry() when stepEnd != null:
        return stepEnd(_that);
      case StepErrorEntry() when stepError != null:
        return stepError(_that);
      case CursorEntryRow() when row != null:
        return row(_that);
      case CursorEntryError() when error != null:
        return error(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StepBeginEntry value) stepBegin,
    required TResult Function(StepEndEntry value) stepEnd,
    required TResult Function(StepErrorEntry value) stepError,
    required TResult Function(CursorEntryRow value) row,
    required TResult Function(CursorEntryError value) error,
  }) {
    final _that = this;
    switch (_that) {
      case StepBeginEntry():
        return stepBegin(_that);
      case StepEndEntry():
        return stepEnd(_that);
      case StepErrorEntry():
        return stepError(_that);
      case CursorEntryRow():
        return row(_that);
      case CursorEntryError():
        return error(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StepBeginEntry value)? stepBegin,
    TResult? Function(StepEndEntry value)? stepEnd,
    TResult? Function(StepErrorEntry value)? stepError,
    TResult? Function(CursorEntryRow value)? row,
    TResult? Function(CursorEntryError value)? error,
  }) {
    final _that = this;
    switch (_that) {
      case StepBeginEntry() when stepBegin != null:
        return stepBegin(_that);
      case StepEndEntry() when stepEnd != null:
        return stepEnd(_that);
      case StepErrorEntry() when stepError != null:
        return stepError(_that);
      case CursorEntryRow() when row != null:
        return row(_that);
      case CursorEntryError() when error != null:
        return error(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int step, List<Col> cols)? stepBegin,
    TResult Function(
            int affectedRowCount, @Int64Converter() Int64? lastInsertRowid)?
        stepEnd,
    TResult Function(int step, StreamError error)? stepError,
    TResult Function(List<HranaValue> row)? row,
    TResult Function(StreamError error)? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case StepBeginEntry() when stepBegin != null:
        return stepBegin(_that.step, _that.cols);
      case StepEndEntry() when stepEnd != null:
        return stepEnd(_that.affectedRowCount, _that.lastInsertRowid);
      case StepErrorEntry() when stepError != null:
        return stepError(_that.step, _that.error);
      case CursorEntryRow() when row != null:
        return row(_that.row);
      case CursorEntryError() when error != null:
        return error(_that.error);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int step, List<Col> cols) stepBegin,
    required TResult Function(
            int affectedRowCount, @Int64Converter() Int64? lastInsertRowid)
        stepEnd,
    required TResult Function(int step, StreamError error) stepError,
    required TResult Function(List<HranaValue> row) row,
    required TResult Function(StreamError error) error,
  }) {
    final _that = this;
    switch (_that) {
      case StepBeginEntry():
        return stepBegin(_that.step, _that.cols);
      case StepEndEntry():
        return stepEnd(_that.affectedRowCount, _that.lastInsertRowid);
      case StepErrorEntry():
        return stepError(_that.step, _that.error);
      case CursorEntryRow():
        return row(_that.row);
      case CursorEntryError():
        return error(_that.error);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int step, List<Col> cols)? stepBegin,
    TResult? Function(
            int affectedRowCount, @Int64Converter() Int64? lastInsertRowid)?
        stepEnd,
    TResult? Function(int step, StreamError error)? stepError,
    TResult? Function(List<HranaValue> row)? row,
    TResult? Function(StreamError error)? error,
  }) {
    final _that = this;
    switch (_that) {
      case StepBeginEntry() when stepBegin != null:
        return stepBegin(_that.step, _that.cols);
      case StepEndEntry() when stepEnd != null:
        return stepEnd(_that.affectedRowCount, _that.lastInsertRowid);
      case StepErrorEntry() when stepError != null:
        return stepError(_that.step, _that.error);
      case CursorEntryRow() when row != null:
        return row(_that.row);
      case CursorEntryError() when error != null:
        return error(_that.error);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class StepBeginEntry extends CursorEntry {
  const StepBeginEntry(
      {required this.step, required List<Col> cols, String? $type})
      : _cols = cols,
        $type = $type ?? 'step_begin',
        super._();
  factory StepBeginEntry.fromJson(Map<String, dynamic> json) =>
      _$StepBeginEntryFromJson(json);

  final int step;
  final List<Col> _cols;
  List<Col> get cols {
    if (_cols is EqualUnmodifiableListView) return _cols;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cols);
  }

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of CursorEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StepBeginEntryCopyWith<StepBeginEntry> get copyWith =>
      _$StepBeginEntryCopyWithImpl<StepBeginEntry>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StepBeginEntryToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StepBeginEntry &&
            (identical(other.step, step) || other.step == step) &&
            const DeepCollectionEquality().equals(other.cols, _cols));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(
        runtimeType, step, const DeepCollectionEquality().hash(_cols));
  }

  @override
  String toString() {
    return 'CursorEntry.stepBegin(step: $step, cols: $cols)';
  }
}

/// @nodoc
abstract mixin class $StepBeginEntryCopyWith<$Res>
    implements $CursorEntryCopyWith<$Res> {
  factory $StepBeginEntryCopyWith(
          StepBeginEntry value, $Res Function(StepBeginEntry) _then) =
      _$StepBeginEntryCopyWithImpl;
  @useResult
  $Res call({int step, List<Col> cols});
}

/// @nodoc
class _$StepBeginEntryCopyWithImpl<$Res>
    implements $StepBeginEntryCopyWith<$Res> {
  _$StepBeginEntryCopyWithImpl(this._self, this._then);

  final StepBeginEntry _self;
  final $Res Function(StepBeginEntry) _then;

  /// Create a copy of CursorEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? step = null,
    Object? cols = null,
  }) {
    return _then(StepBeginEntry(
      step: null == step
          ? _self.step
          : step // ignore: cast_nullable_to_non_nullable
              as int,
      cols: null == cols
          ? _self._cols
          : cols // ignore: cast_nullable_to_non_nullable
              as List<Col>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class StepEndEntry extends CursorEntry {
  const StepEndEntry(
      {required this.affectedRowCount,
      @Int64Converter() this.lastInsertRowid,
      String? $type})
      : $type = $type ?? 'step_end',
        super._();
  factory StepEndEntry.fromJson(Map<String, dynamic> json) =>
      _$StepEndEntryFromJson(json);

  final int affectedRowCount;
  @Int64Converter()
  final Int64? lastInsertRowid;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of CursorEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StepEndEntryCopyWith<StepEndEntry> get copyWith =>
      _$StepEndEntryCopyWithImpl<StepEndEntry>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StepEndEntryToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StepEndEntry &&
            (identical(other.affectedRowCount, affectedRowCount) ||
                other.affectedRowCount == affectedRowCount) &&
            (identical(other.lastInsertRowid, lastInsertRowid) ||
                other.lastInsertRowid == lastInsertRowid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, affectedRowCount, lastInsertRowid);
  }

  @override
  String toString() {
    return 'CursorEntry.stepEnd(affectedRowCount: $affectedRowCount, lastInsertRowid: $lastInsertRowid)';
  }
}

/// @nodoc
abstract mixin class $StepEndEntryCopyWith<$Res>
    implements $CursorEntryCopyWith<$Res> {
  factory $StepEndEntryCopyWith(
          StepEndEntry value, $Res Function(StepEndEntry) _then) =
      _$StepEndEntryCopyWithImpl;
  @useResult
  $Res call({int affectedRowCount, @Int64Converter() Int64? lastInsertRowid});
}

/// @nodoc
class _$StepEndEntryCopyWithImpl<$Res> implements $StepEndEntryCopyWith<$Res> {
  _$StepEndEntryCopyWithImpl(this._self, this._then);

  final StepEndEntry _self;
  final $Res Function(StepEndEntry) _then;

  /// Create a copy of CursorEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? affectedRowCount = null,
    Object? lastInsertRowid = freezed,
  }) {
    return _then(StepEndEntry(
      affectedRowCount: null == affectedRowCount
          ? _self.affectedRowCount
          : affectedRowCount // ignore: cast_nullable_to_non_nullable
              as int,
      lastInsertRowid: freezed == lastInsertRowid
          ? _self.lastInsertRowid
          : lastInsertRowid // ignore: cast_nullable_to_non_nullable
              as Int64?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class StepErrorEntry extends CursorEntry {
  const StepErrorEntry({required this.step, required this.error, String? $type})
      : $type = $type ?? 'step_error',
        super._();
  factory StepErrorEntry.fromJson(Map<String, dynamic> json) =>
      _$StepErrorEntryFromJson(json);

  final int step;
  final StreamError error;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of CursorEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StepErrorEntryCopyWith<StepErrorEntry> get copyWith =>
      _$StepErrorEntryCopyWithImpl<StepErrorEntry>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StepErrorEntryToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StepErrorEntry &&
            (identical(other.step, step) || other.step == step) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, step, error);
  }

  @override
  String toString() {
    return 'CursorEntry.stepError(step: $step, error: $error)';
  }
}

/// @nodoc
abstract mixin class $StepErrorEntryCopyWith<$Res>
    implements $CursorEntryCopyWith<$Res> {
  factory $StepErrorEntryCopyWith(
          StepErrorEntry value, $Res Function(StepErrorEntry) _then) =
      _$StepErrorEntryCopyWithImpl;
  @useResult
  $Res call({int step, StreamError error});

  $StreamErrorCopyWith<$Res> get error;
}

/// @nodoc
class _$StepErrorEntryCopyWithImpl<$Res>
    implements $StepErrorEntryCopyWith<$Res> {
  _$StepErrorEntryCopyWithImpl(this._self, this._then);

  final StepErrorEntry _self;
  final $Res Function(StepErrorEntry) _then;

  /// Create a copy of CursorEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? step = null,
    Object? error = null,
  }) {
    return _then(StepErrorEntry(
      step: null == step
          ? _self.step
          : step // ignore: cast_nullable_to_non_nullable
              as int,
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as StreamError,
    ));
  }

  /// Create a copy of CursorEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StreamErrorCopyWith<$Res> get error {
    return $StreamErrorCopyWith<$Res>(_self.error, (value) {
      return _then(_self.copyWith(error: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class CursorEntryRow extends CursorEntry {
  const CursorEntryRow(List<HranaValue> row, {String? $type})
      : _row = row,
        $type = $type ?? 'row',
        super._();
  factory CursorEntryRow.fromJson(Map<String, dynamic> json) =>
      _$CursorEntryRowFromJson(json);

  final List<HranaValue> _row;
  List<HranaValue> get row {
    if (_row is EqualUnmodifiableListView) return _row;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_row);
  }

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of CursorEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CursorEntryRowCopyWith<CursorEntryRow> get copyWith =>
      _$CursorEntryRowCopyWithImpl<CursorEntryRow>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CursorEntryRowToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CursorEntryRow &&
            const DeepCollectionEquality().equals(other.row, _row));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, const DeepCollectionEquality().hash(_row));
  }

  @override
  String toString() {
    return 'CursorEntry.row(row: $row)';
  }
}

/// @nodoc
abstract mixin class $CursorEntryRowCopyWith<$Res>
    implements $CursorEntryCopyWith<$Res> {
  factory $CursorEntryRowCopyWith(
          CursorEntryRow value, $Res Function(CursorEntryRow) _then) =
      _$CursorEntryRowCopyWithImpl;
  @useResult
  $Res call({List<HranaValue> row});
}

/// @nodoc
class _$CursorEntryRowCopyWithImpl<$Res>
    implements $CursorEntryRowCopyWith<$Res> {
  _$CursorEntryRowCopyWithImpl(this._self, this._then);

  final CursorEntryRow _self;
  final $Res Function(CursorEntryRow) _then;

  /// Create a copy of CursorEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? row = null,
  }) {
    return _then(CursorEntryRow(
      null == row
          ? _self._row
          : row // ignore: cast_nullable_to_non_nullable
              as List<HranaValue>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class CursorEntryError extends CursorEntry {
  const CursorEntryError(this.error, {String? $type})
      : $type = $type ?? 'error',
        super._();
  factory CursorEntryError.fromJson(Map<String, dynamic> json) =>
      _$CursorEntryErrorFromJson(json);

  final StreamError error;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of CursorEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CursorEntryErrorCopyWith<CursorEntryError> get copyWith =>
      _$CursorEntryErrorCopyWithImpl<CursorEntryError>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CursorEntryErrorToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CursorEntryError &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, error);
  }

  @override
  String toString() {
    return 'CursorEntry.error(error: $error)';
  }
}

/// @nodoc
abstract mixin class $CursorEntryErrorCopyWith<$Res>
    implements $CursorEntryCopyWith<$Res> {
  factory $CursorEntryErrorCopyWith(
          CursorEntryError value, $Res Function(CursorEntryError) _then) =
      _$CursorEntryErrorCopyWithImpl;
  @useResult
  $Res call({StreamError error});

  $StreamErrorCopyWith<$Res> get error;
}

/// @nodoc
class _$CursorEntryErrorCopyWithImpl<$Res>
    implements $CursorEntryErrorCopyWith<$Res> {
  _$CursorEntryErrorCopyWithImpl(this._self, this._then);

  final CursorEntryError _self;
  final $Res Function(CursorEntryError) _then;

  /// Create a copy of CursorEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(CursorEntryError(
      null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as StreamError,
    ));
  }

  /// Create a copy of CursorEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StreamErrorCopyWith<$Res> get error {
    return $StreamErrorCopyWith<$Res>(_self.error, (value) {
      return _then(_self.copyWith(error: value));
    });
  }
}

/// @nodoc
mixin _$DescribeResult {
  List<DescribeParam> get params;
  List<DescribeCol> get cols;
  bool get isExplain;
  bool get isReadonly;

  /// Create a copy of DescribeResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DescribeResultCopyWith<DescribeResult> get copyWith =>
      _$DescribeResultCopyWithImpl<DescribeResult>(
          this as DescribeResult, _$identity);

  /// Serializes this DescribeResult to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as DescribeResult;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DescribeResult &&
            const DeepCollectionEquality().equals(other.params, _this.params) &&
            const DeepCollectionEquality().equals(other.cols, _this.cols) &&
            (identical(other.isExplain, _this.isExplain) ||
                other.isExplain == _this.isExplain) &&
            (identical(other.isReadonly, _this.isReadonly) ||
                other.isReadonly == _this.isReadonly));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as DescribeResult;
    return Object.hash(
        runtimeType,
        const DeepCollectionEquality().hash(_this.params),
        const DeepCollectionEquality().hash(_this.cols),
        _this.isExplain,
        _this.isReadonly);
  }

  @override
  String toString() {
    final _this = this as DescribeResult;
    return 'DescribeResult(params: ${_this.params}, cols: ${_this.cols}, isExplain: ${_this.isExplain}, isReadonly: ${_this.isReadonly})';
  }
}

/// @nodoc
abstract mixin class $DescribeResultCopyWith<$Res> {
  factory $DescribeResultCopyWith(
          DescribeResult value, $Res Function(DescribeResult) _then) =
      _$DescribeResultCopyWithImpl;
  @useResult
  $Res call(
      {List<DescribeParam> params,
      List<DescribeCol> cols,
      bool isExplain,
      bool isReadonly});
}

/// @nodoc
class _$DescribeResultCopyWithImpl<$Res>
    implements $DescribeResultCopyWith<$Res> {
  _$DescribeResultCopyWithImpl(this._self, this._then);

  final DescribeResult _self;
  final $Res Function(DescribeResult) _then;

  /// Create a copy of DescribeResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
    Object? cols = null,
    Object? isExplain = null,
    Object? isReadonly = null,
  }) {
    return _then(DescribeResult(
      params: null == params
          ? _self.params
          : params // ignore: cast_nullable_to_non_nullable
              as List<DescribeParam>,
      cols: null == cols
          ? _self.cols
          : cols // ignore: cast_nullable_to_non_nullable
              as List<DescribeCol>,
      isExplain: null == isExplain
          ? _self.isExplain
          : isExplain // ignore: cast_nullable_to_non_nullable
              as bool,
      isReadonly: null == isReadonly
          ? _self.isReadonly
          : isReadonly // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [DescribeResult].
extension DescribeResultPatterns on DescribeResult {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_DescribeResult value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DescribeResult() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_DescribeResult value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DescribeResult():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_DescribeResult value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DescribeResult() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<DescribeParam> params, List<DescribeCol> cols,
            bool isExplain, bool isReadonly)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DescribeResult() when $default != null:
        return $default(
            _that.params, _that.cols, _that.isExplain, _that.isReadonly);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<DescribeParam> params, List<DescribeCol> cols,
            bool isExplain, bool isReadonly)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DescribeResult():
        return $default(
            _that.params, _that.cols, _that.isExplain, _that.isReadonly);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<DescribeParam> params, List<DescribeCol> cols,
            bool isExplain, bool isReadonly)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DescribeResult() when $default != null:
        return $default(
            _that.params, _that.cols, _that.isExplain, _that.isReadonly);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _DescribeResult extends DescribeResult {
  const _DescribeResult(
      {required List<DescribeParam> params,
      required List<DescribeCol> cols,
      required this.isExplain,
      required this.isReadonly})
      : _params = params,
        _cols = cols,
        super._();
  factory _DescribeResult.fromJson(Map<String, dynamic> json) =>
      _$DescribeResultFromJson(json);

  final List<DescribeParam> _params;
  @override
  List<DescribeParam> get params {
    if (_params is EqualUnmodifiableListView) return _params;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_params);
  }

  final List<DescribeCol> _cols;
  @override
  List<DescribeCol> get cols {
    if (_cols is EqualUnmodifiableListView) return _cols;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cols);
  }

  @override
  final bool isExplain;
  @override
  final bool isReadonly;

  /// Create a copy of DescribeResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DescribeResultCopyWith<_DescribeResult> get copyWith =>
      __$DescribeResultCopyWithImpl<_DescribeResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DescribeResultToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DescribeResult &&
            const DeepCollectionEquality().equals(other.params, _params) &&
            const DeepCollectionEquality().equals(other.cols, _cols) &&
            (identical(other.isExplain, isExplain) ||
                other.isExplain == isExplain) &&
            (identical(other.isReadonly, isReadonly) ||
                other.isReadonly == isReadonly));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(
        runtimeType,
        const DeepCollectionEquality().hash(_params),
        const DeepCollectionEquality().hash(_cols),
        isExplain,
        isReadonly);
  }

  @override
  String toString() {
    return 'DescribeResult(params: $params, cols: $cols, isExplain: $isExplain, isReadonly: $isReadonly)';
  }
}

/// @nodoc
abstract mixin class _$DescribeResultCopyWith<$Res>
    implements $DescribeResultCopyWith<$Res> {
  factory _$DescribeResultCopyWith(
          _DescribeResult value, $Res Function(_DescribeResult) _then) =
      __$DescribeResultCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<DescribeParam> params,
      List<DescribeCol> cols,
      bool isExplain,
      bool isReadonly});
}

/// @nodoc
class __$DescribeResultCopyWithImpl<$Res>
    implements _$DescribeResultCopyWith<$Res> {
  __$DescribeResultCopyWithImpl(this._self, this._then);

  final _DescribeResult _self;
  final $Res Function(_DescribeResult) _then;

  /// Create a copy of DescribeResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? params = null,
    Object? cols = null,
    Object? isExplain = null,
    Object? isReadonly = null,
  }) {
    return _then(_DescribeResult(
      params: null == params
          ? _self._params
          : params // ignore: cast_nullable_to_non_nullable
              as List<DescribeParam>,
      cols: null == cols
          ? _self._cols
          : cols // ignore: cast_nullable_to_non_nullable
              as List<DescribeCol>,
      isExplain: null == isExplain
          ? _self.isExplain
          : isExplain // ignore: cast_nullable_to_non_nullable
              as bool,
      isReadonly: null == isReadonly
          ? _self.isReadonly
          : isReadonly // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
mixin _$DescribeParam {
  String? get name;

  /// Create a copy of DescribeParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DescribeParamCopyWith<DescribeParam> get copyWith =>
      _$DescribeParamCopyWithImpl<DescribeParam>(
          this as DescribeParam, _$identity);

  /// Serializes this DescribeParam to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as DescribeParam;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DescribeParam &&
            (identical(other.name, _this.name) || other.name == _this.name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as DescribeParam;
    return Object.hash(runtimeType, _this.name);
  }

  @override
  String toString() {
    final _this = this as DescribeParam;
    return 'DescribeParam(name: ${_this.name})';
  }
}

/// @nodoc
abstract mixin class $DescribeParamCopyWith<$Res> {
  factory $DescribeParamCopyWith(
          DescribeParam value, $Res Function(DescribeParam) _then) =
      _$DescribeParamCopyWithImpl;
  @useResult
  $Res call({String? name});
}

/// @nodoc
class _$DescribeParamCopyWithImpl<$Res>
    implements $DescribeParamCopyWith<$Res> {
  _$DescribeParamCopyWithImpl(this._self, this._then);

  final DescribeParam _self;
  final $Res Function(DescribeParam) _then;

  /// Create a copy of DescribeParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(DescribeParam(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [DescribeParam].
extension DescribeParamPatterns on DescribeParam {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_DescribeParam value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DescribeParam() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_DescribeParam value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DescribeParam():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_DescribeParam value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DescribeParam() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? name)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DescribeParam() when $default != null:
        return $default(_that.name);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? name) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DescribeParam():
        return $default(_that.name);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? name)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DescribeParam() when $default != null:
        return $default(_that.name);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _DescribeParam extends DescribeParam {
  const _DescribeParam({this.name}) : super._();
  factory _DescribeParam.fromJson(Map<String, dynamic> json) =>
      _$DescribeParamFromJson(json);

  @override
  final String? name;

  /// Create a copy of DescribeParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DescribeParamCopyWith<_DescribeParam> get copyWith =>
      __$DescribeParamCopyWithImpl<_DescribeParam>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DescribeParamToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DescribeParam &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, name);
  }

  @override
  String toString() {
    return 'DescribeParam(name: $name)';
  }
}

/// @nodoc
abstract mixin class _$DescribeParamCopyWith<$Res>
    implements $DescribeParamCopyWith<$Res> {
  factory _$DescribeParamCopyWith(
          _DescribeParam value, $Res Function(_DescribeParam) _then) =
      __$DescribeParamCopyWithImpl;
  @override
  @useResult
  $Res call({String? name});
}

/// @nodoc
class __$DescribeParamCopyWithImpl<$Res>
    implements _$DescribeParamCopyWith<$Res> {
  __$DescribeParamCopyWithImpl(this._self, this._then);

  final _DescribeParam _self;
  final $Res Function(_DescribeParam) _then;

  /// Create a copy of DescribeParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_DescribeParam(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$DescribeCol {
  String get name;
  String? get decltype;

  /// Create a copy of DescribeCol
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DescribeColCopyWith<DescribeCol> get copyWith =>
      _$DescribeColCopyWithImpl<DescribeCol>(this as DescribeCol, _$identity);

  /// Serializes this DescribeCol to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as DescribeCol;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DescribeCol &&
            (identical(other.name, _this.name) || other.name == _this.name) &&
            (identical(other.decltype, _this.decltype) ||
                other.decltype == _this.decltype));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as DescribeCol;
    return Object.hash(runtimeType, _this.name, _this.decltype);
  }

  @override
  String toString() {
    final _this = this as DescribeCol;
    return 'DescribeCol(name: ${_this.name}, decltype: ${_this.decltype})';
  }
}

/// @nodoc
abstract mixin class $DescribeColCopyWith<$Res> {
  factory $DescribeColCopyWith(
          DescribeCol value, $Res Function(DescribeCol) _then) =
      _$DescribeColCopyWithImpl;
  @useResult
  $Res call({String name, String? decltype});
}

/// @nodoc
class _$DescribeColCopyWithImpl<$Res> implements $DescribeColCopyWith<$Res> {
  _$DescribeColCopyWithImpl(this._self, this._then);

  final DescribeCol _self;
  final $Res Function(DescribeCol) _then;

  /// Create a copy of DescribeCol
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? decltype = freezed,
  }) {
    return _then(DescribeCol(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      decltype: freezed == decltype
          ? _self.decltype
          : decltype // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [DescribeCol].
extension DescribeColPatterns on DescribeCol {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_DescribeCol value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DescribeCol() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_DescribeCol value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DescribeCol():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_DescribeCol value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DescribeCol() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String name, String? decltype)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DescribeCol() when $default != null:
        return $default(_that.name, _that.decltype);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String name, String? decltype) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DescribeCol():
        return $default(_that.name, _that.decltype);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String name, String? decltype)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DescribeCol() when $default != null:
        return $default(_that.name, _that.decltype);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _DescribeCol extends DescribeCol {
  const _DescribeCol({required this.name, this.decltype}) : super._();
  factory _DescribeCol.fromJson(Map<String, dynamic> json) =>
      _$DescribeColFromJson(json);

  @override
  final String name;
  @override
  final String? decltype;

  /// Create a copy of DescribeCol
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DescribeColCopyWith<_DescribeCol> get copyWith =>
      __$DescribeColCopyWithImpl<_DescribeCol>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DescribeColToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DescribeCol &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.decltype, decltype) ||
                other.decltype == decltype));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, name, decltype);
  }

  @override
  String toString() {
    return 'DescribeCol(name: $name, decltype: $decltype)';
  }
}

/// @nodoc
abstract mixin class _$DescribeColCopyWith<$Res>
    implements $DescribeColCopyWith<$Res> {
  factory _$DescribeColCopyWith(
          _DescribeCol value, $Res Function(_DescribeCol) _then) =
      __$DescribeColCopyWithImpl;
  @override
  @useResult
  $Res call({String name, String? decltype});
}

/// @nodoc
class __$DescribeColCopyWithImpl<$Res> implements _$DescribeColCopyWith<$Res> {
  __$DescribeColCopyWithImpl(this._self, this._then);

  final _DescribeCol _self;
  final $Res Function(_DescribeCol) _then;

  /// Create a copy of DescribeCol
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? decltype = freezed,
  }) {
    return _then(_DescribeCol(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      decltype: freezed == decltype
          ? _self.decltype
          : decltype // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

ClientMsg _$ClientMsgFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'hello':
      return HelloMsg.fromJson(json);
    case 'request':
      return RequestMsg.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'type', 'ClientMsg', 'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$ClientMsg {
  /// Serializes this ClientMsg to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ClientMsg);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ClientMsg()';
  }
}

/// @nodoc
class $ClientMsgCopyWith<$Res> {
  $ClientMsgCopyWith(ClientMsg _, $Res Function(ClientMsg) __);
}

/// Adds pattern-matching-related methods to [ClientMsg].
extension ClientMsgPatterns on ClientMsg {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HelloMsg value)? hello,
    TResult Function(RequestMsg value)? request,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case HelloMsg() when hello != null:
        return hello(_that);
      case RequestMsg() when request != null:
        return request(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HelloMsg value) hello,
    required TResult Function(RequestMsg value) request,
  }) {
    final _that = this;
    switch (_that) {
      case HelloMsg():
        return hello(_that);
      case RequestMsg():
        return request(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HelloMsg value)? hello,
    TResult? Function(RequestMsg value)? request,
  }) {
    final _that = this;
    switch (_that) {
      case HelloMsg() when hello != null:
        return hello(_that);
      case RequestMsg() when request != null:
        return request(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? jwt)? hello,
    TResult Function(int requestId, Request request)? request,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case HelloMsg() when hello != null:
        return hello(_that.jwt);
      case RequestMsg() when request != null:
        return request(_that.requestId, _that.request);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? jwt) hello,
    required TResult Function(int requestId, Request request) request,
  }) {
    final _that = this;
    switch (_that) {
      case HelloMsg():
        return hello(_that.jwt);
      case RequestMsg():
        return request(_that.requestId, _that.request);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? jwt)? hello,
    TResult? Function(int requestId, Request request)? request,
  }) {
    final _that = this;
    switch (_that) {
      case HelloMsg() when hello != null:
        return hello(_that.jwt);
      case RequestMsg() when request != null:
        return request(_that.requestId, _that.request);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class HelloMsg extends ClientMsg {
  const HelloMsg({this.jwt, String? $type})
      : $type = $type ?? 'hello',
        super._();
  factory HelloMsg.fromJson(Map<String, dynamic> json) =>
      _$HelloMsgFromJson(json);

  final String? jwt;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of ClientMsg
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HelloMsgCopyWith<HelloMsg> get copyWith =>
      _$HelloMsgCopyWithImpl<HelloMsg>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$HelloMsgToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HelloMsg &&
            (identical(other.jwt, jwt) || other.jwt == jwt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, jwt);
  }

  @override
  String toString() {
    return 'ClientMsg.hello(jwt: $jwt)';
  }
}

/// @nodoc
abstract mixin class $HelloMsgCopyWith<$Res>
    implements $ClientMsgCopyWith<$Res> {
  factory $HelloMsgCopyWith(HelloMsg value, $Res Function(HelloMsg) _then) =
      _$HelloMsgCopyWithImpl;
  @useResult
  $Res call({String? jwt});
}

/// @nodoc
class _$HelloMsgCopyWithImpl<$Res> implements $HelloMsgCopyWith<$Res> {
  _$HelloMsgCopyWithImpl(this._self, this._then);

  final HelloMsg _self;
  final $Res Function(HelloMsg) _then;

  /// Create a copy of ClientMsg
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? jwt = freezed,
  }) {
    return _then(HelloMsg(
      jwt: freezed == jwt
          ? _self.jwt
          : jwt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class RequestMsg extends ClientMsg {
  const RequestMsg(
      {required this.requestId, required this.request, String? $type})
      : $type = $type ?? 'request',
        super._();
  factory RequestMsg.fromJson(Map<String, dynamic> json) =>
      _$RequestMsgFromJson(json);

  final int requestId;
  final Request request;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of ClientMsg
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RequestMsgCopyWith<RequestMsg> get copyWith =>
      _$RequestMsgCopyWithImpl<RequestMsg>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RequestMsgToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RequestMsg &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.request, request) || other.request == request));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, requestId, request);
  }

  @override
  String toString() {
    return 'ClientMsg.request(requestId: $requestId, request: $request)';
  }
}

/// @nodoc
abstract mixin class $RequestMsgCopyWith<$Res>
    implements $ClientMsgCopyWith<$Res> {
  factory $RequestMsgCopyWith(
          RequestMsg value, $Res Function(RequestMsg) _then) =
      _$RequestMsgCopyWithImpl;
  @useResult
  $Res call({int requestId, Request request});

  $RequestCopyWith<$Res> get request;
}

/// @nodoc
class _$RequestMsgCopyWithImpl<$Res> implements $RequestMsgCopyWith<$Res> {
  _$RequestMsgCopyWithImpl(this._self, this._then);

  final RequestMsg _self;
  final $Res Function(RequestMsg) _then;

  /// Create a copy of ClientMsg
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? requestId = null,
    Object? request = null,
  }) {
    return _then(RequestMsg(
      requestId: null == requestId
          ? _self.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as int,
      request: null == request
          ? _self.request
          : request // ignore: cast_nullable_to_non_nullable
              as Request,
    ));
  }

  /// Create a copy of ClientMsg
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RequestCopyWith<$Res> get request {
    return $RequestCopyWith<$Res>(_self.request, (value) {
      return _then(_self.copyWith(request: value));
    });
  }
}

ServerMsg _$ServerMsgFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'hello_ok':
      return HelloOkMsg.fromJson(json);
    case 'hello_error':
      return HelloErrorMsg.fromJson(json);
    case 'response_ok':
      return ResponseOkMsg.fromJson(json);
    case 'response_error':
      return ResponseErrorMsg.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'type', 'ServerMsg', 'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$ServerMsg {
  /// Serializes this ServerMsg to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ServerMsg);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ServerMsg()';
  }
}

/// @nodoc
class $ServerMsgCopyWith<$Res> {
  $ServerMsgCopyWith(ServerMsg _, $Res Function(ServerMsg) __);
}

/// Adds pattern-matching-related methods to [ServerMsg].
extension ServerMsgPatterns on ServerMsg {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HelloOkMsg value)? helloOk,
    TResult Function(HelloErrorMsg value)? helloError,
    TResult Function(ResponseOkMsg value)? responseOk,
    TResult Function(ResponseErrorMsg value)? responseError,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case HelloOkMsg() when helloOk != null:
        return helloOk(_that);
      case HelloErrorMsg() when helloError != null:
        return helloError(_that);
      case ResponseOkMsg() when responseOk != null:
        return responseOk(_that);
      case ResponseErrorMsg() when responseError != null:
        return responseError(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HelloOkMsg value) helloOk,
    required TResult Function(HelloErrorMsg value) helloError,
    required TResult Function(ResponseOkMsg value) responseOk,
    required TResult Function(ResponseErrorMsg value) responseError,
  }) {
    final _that = this;
    switch (_that) {
      case HelloOkMsg():
        return helloOk(_that);
      case HelloErrorMsg():
        return helloError(_that);
      case ResponseOkMsg():
        return responseOk(_that);
      case ResponseErrorMsg():
        return responseError(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HelloOkMsg value)? helloOk,
    TResult? Function(HelloErrorMsg value)? helloError,
    TResult? Function(ResponseOkMsg value)? responseOk,
    TResult? Function(ResponseErrorMsg value)? responseError,
  }) {
    final _that = this;
    switch (_that) {
      case HelloOkMsg() when helloOk != null:
        return helloOk(_that);
      case HelloErrorMsg() when helloError != null:
        return helloError(_that);
      case ResponseOkMsg() when responseOk != null:
        return responseOk(_that);
      case ResponseErrorMsg() when responseError != null:
        return responseError(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? helloOk,
    TResult Function(StreamError error)? helloError,
    TResult Function(int requestId, Response response)? responseOk,
    TResult Function(int requestId, StreamError error)? responseError,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case HelloOkMsg() when helloOk != null:
        return helloOk();
      case HelloErrorMsg() when helloError != null:
        return helloError(_that.error);
      case ResponseOkMsg() when responseOk != null:
        return responseOk(_that.requestId, _that.response);
      case ResponseErrorMsg() when responseError != null:
        return responseError(_that.requestId, _that.error);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() helloOk,
    required TResult Function(StreamError error) helloError,
    required TResult Function(int requestId, Response response) responseOk,
    required TResult Function(int requestId, StreamError error) responseError,
  }) {
    final _that = this;
    switch (_that) {
      case HelloOkMsg():
        return helloOk();
      case HelloErrorMsg():
        return helloError(_that.error);
      case ResponseOkMsg():
        return responseOk(_that.requestId, _that.response);
      case ResponseErrorMsg():
        return responseError(_that.requestId, _that.error);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? helloOk,
    TResult? Function(StreamError error)? helloError,
    TResult? Function(int requestId, Response response)? responseOk,
    TResult? Function(int requestId, StreamError error)? responseError,
  }) {
    final _that = this;
    switch (_that) {
      case HelloOkMsg() when helloOk != null:
        return helloOk();
      case HelloErrorMsg() when helloError != null:
        return helloError(_that.error);
      case ResponseOkMsg() when responseOk != null:
        return responseOk(_that.requestId, _that.response);
      case ResponseErrorMsg() when responseError != null:
        return responseError(_that.requestId, _that.error);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class HelloOkMsg extends ServerMsg {
  const HelloOkMsg({String? $type})
      : $type = $type ?? 'hello_ok',
        super._();
  factory HelloOkMsg.fromJson(Map<String, dynamic> json) =>
      _$HelloOkMsgFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$HelloOkMsgToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HelloOkMsg);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ServerMsg.helloOk()';
  }
}

/// @nodoc
@JsonSerializable()
class HelloErrorMsg extends ServerMsg {
  const HelloErrorMsg({required this.error, String? $type})
      : $type = $type ?? 'hello_error',
        super._();
  factory HelloErrorMsg.fromJson(Map<String, dynamic> json) =>
      _$HelloErrorMsgFromJson(json);

  final StreamError error;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of ServerMsg
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HelloErrorMsgCopyWith<HelloErrorMsg> get copyWith =>
      _$HelloErrorMsgCopyWithImpl<HelloErrorMsg>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$HelloErrorMsgToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HelloErrorMsg &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, error);
  }

  @override
  String toString() {
    return 'ServerMsg.helloError(error: $error)';
  }
}

/// @nodoc
abstract mixin class $HelloErrorMsgCopyWith<$Res>
    implements $ServerMsgCopyWith<$Res> {
  factory $HelloErrorMsgCopyWith(
          HelloErrorMsg value, $Res Function(HelloErrorMsg) _then) =
      _$HelloErrorMsgCopyWithImpl;
  @useResult
  $Res call({StreamError error});

  $StreamErrorCopyWith<$Res> get error;
}

/// @nodoc
class _$HelloErrorMsgCopyWithImpl<$Res>
    implements $HelloErrorMsgCopyWith<$Res> {
  _$HelloErrorMsgCopyWithImpl(this._self, this._then);

  final HelloErrorMsg _self;
  final $Res Function(HelloErrorMsg) _then;

  /// Create a copy of ServerMsg
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(HelloErrorMsg(
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as StreamError,
    ));
  }

  /// Create a copy of ServerMsg
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StreamErrorCopyWith<$Res> get error {
    return $StreamErrorCopyWith<$Res>(_self.error, (value) {
      return _then(_self.copyWith(error: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class ResponseOkMsg extends ServerMsg {
  const ResponseOkMsg(
      {required this.requestId, required this.response, String? $type})
      : $type = $type ?? 'response_ok',
        super._();
  factory ResponseOkMsg.fromJson(Map<String, dynamic> json) =>
      _$ResponseOkMsgFromJson(json);

  final int requestId;
  final Response response;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of ServerMsg
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResponseOkMsgCopyWith<ResponseOkMsg> get copyWith =>
      _$ResponseOkMsgCopyWithImpl<ResponseOkMsg>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ResponseOkMsgToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResponseOkMsg &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, requestId, response);
  }

  @override
  String toString() {
    return 'ServerMsg.responseOk(requestId: $requestId, response: $response)';
  }
}

/// @nodoc
abstract mixin class $ResponseOkMsgCopyWith<$Res>
    implements $ServerMsgCopyWith<$Res> {
  factory $ResponseOkMsgCopyWith(
          ResponseOkMsg value, $Res Function(ResponseOkMsg) _then) =
      _$ResponseOkMsgCopyWithImpl;
  @useResult
  $Res call({int requestId, Response response});

  $ResponseCopyWith<$Res> get response;
}

/// @nodoc
class _$ResponseOkMsgCopyWithImpl<$Res>
    implements $ResponseOkMsgCopyWith<$Res> {
  _$ResponseOkMsgCopyWithImpl(this._self, this._then);

  final ResponseOkMsg _self;
  final $Res Function(ResponseOkMsg) _then;

  /// Create a copy of ServerMsg
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? requestId = null,
    Object? response = null,
  }) {
    return _then(ResponseOkMsg(
      requestId: null == requestId
          ? _self.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as int,
      response: null == response
          ? _self.response
          : response // ignore: cast_nullable_to_non_nullable
              as Response,
    ));
  }

  /// Create a copy of ServerMsg
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResponseCopyWith<$Res> get response {
    return $ResponseCopyWith<$Res>(_self.response, (value) {
      return _then(_self.copyWith(response: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class ResponseErrorMsg extends ServerMsg {
  const ResponseErrorMsg(
      {required this.requestId, required this.error, String? $type})
      : $type = $type ?? 'response_error',
        super._();
  factory ResponseErrorMsg.fromJson(Map<String, dynamic> json) =>
      _$ResponseErrorMsgFromJson(json);

  final int requestId;
  final StreamError error;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of ServerMsg
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResponseErrorMsgCopyWith<ResponseErrorMsg> get copyWith =>
      _$ResponseErrorMsgCopyWithImpl<ResponseErrorMsg>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ResponseErrorMsgToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResponseErrorMsg &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, requestId, error);
  }

  @override
  String toString() {
    return 'ServerMsg.responseError(requestId: $requestId, error: $error)';
  }
}

/// @nodoc
abstract mixin class $ResponseErrorMsgCopyWith<$Res>
    implements $ServerMsgCopyWith<$Res> {
  factory $ResponseErrorMsgCopyWith(
          ResponseErrorMsg value, $Res Function(ResponseErrorMsg) _then) =
      _$ResponseErrorMsgCopyWithImpl;
  @useResult
  $Res call({int requestId, StreamError error});

  $StreamErrorCopyWith<$Res> get error;
}

/// @nodoc
class _$ResponseErrorMsgCopyWithImpl<$Res>
    implements $ResponseErrorMsgCopyWith<$Res> {
  _$ResponseErrorMsgCopyWithImpl(this._self, this._then);

  final ResponseErrorMsg _self;
  final $Res Function(ResponseErrorMsg) _then;

  /// Create a copy of ServerMsg
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? requestId = null,
    Object? error = null,
  }) {
    return _then(ResponseErrorMsg(
      requestId: null == requestId
          ? _self.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as int,
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as StreamError,
    ));
  }

  /// Create a copy of ServerMsg
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StreamErrorCopyWith<$Res> get error {
    return $StreamErrorCopyWith<$Res>(_self.error, (value) {
      return _then(_self.copyWith(error: value));
    });
  }
}

Request _$RequestFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'open_stream':
      return OpenStreamReq.fromJson(json);
    case 'close_stream':
      return CloseStreamReq.fromJson(json);
    case 'execute':
      return ExecuteReq.fromJson(json);
    case 'batch':
      return BatchReq.fromJson(json);
    case 'open_cursor':
      return OpenCursorReq.fromJson(json);
    case 'close_cursor':
      return CloseCursorReq.fromJson(json);
    case 'fetch_cursor':
      return FetchCursorReq.fromJson(json);
    case 'sequence':
      return SequenceReq.fromJson(json);
    case 'describe':
      return DescribeReq.fromJson(json);
    case 'store_sql':
      return StoreSqlReq.fromJson(json);
    case 'close_sql':
      return CloseSqlReq.fromJson(json);
    case 'get_autocommit':
      return GetAutocommitReq.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'type', 'Request', 'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$Request {
  /// Serializes this Request to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Request);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'Request()';
  }
}

/// @nodoc
class $RequestCopyWith<$Res> {
  $RequestCopyWith(Request _, $Res Function(Request) __);
}

/// Adds pattern-matching-related methods to [Request].
extension RequestPatterns on Request {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OpenStreamReq value)? openStream,
    TResult Function(CloseStreamReq value)? closeStream,
    TResult Function(ExecuteReq value)? execute,
    TResult Function(BatchReq value)? batch,
    TResult Function(OpenCursorReq value)? openCursor,
    TResult Function(CloseCursorReq value)? closeCursor,
    TResult Function(FetchCursorReq value)? fetchCursor,
    TResult Function(SequenceReq value)? sequence,
    TResult Function(DescribeReq value)? describe,
    TResult Function(StoreSqlReq value)? storeSql,
    TResult Function(CloseSqlReq value)? closeSql,
    TResult Function(GetAutocommitReq value)? getAutocommit,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case OpenStreamReq() when openStream != null:
        return openStream(_that);
      case CloseStreamReq() when closeStream != null:
        return closeStream(_that);
      case ExecuteReq() when execute != null:
        return execute(_that);
      case BatchReq() when batch != null:
        return batch(_that);
      case OpenCursorReq() when openCursor != null:
        return openCursor(_that);
      case CloseCursorReq() when closeCursor != null:
        return closeCursor(_that);
      case FetchCursorReq() when fetchCursor != null:
        return fetchCursor(_that);
      case SequenceReq() when sequence != null:
        return sequence(_that);
      case DescribeReq() when describe != null:
        return describe(_that);
      case StoreSqlReq() when storeSql != null:
        return storeSql(_that);
      case CloseSqlReq() when closeSql != null:
        return closeSql(_that);
      case GetAutocommitReq() when getAutocommit != null:
        return getAutocommit(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OpenStreamReq value) openStream,
    required TResult Function(CloseStreamReq value) closeStream,
    required TResult Function(ExecuteReq value) execute,
    required TResult Function(BatchReq value) batch,
    required TResult Function(OpenCursorReq value) openCursor,
    required TResult Function(CloseCursorReq value) closeCursor,
    required TResult Function(FetchCursorReq value) fetchCursor,
    required TResult Function(SequenceReq value) sequence,
    required TResult Function(DescribeReq value) describe,
    required TResult Function(StoreSqlReq value) storeSql,
    required TResult Function(CloseSqlReq value) closeSql,
    required TResult Function(GetAutocommitReq value) getAutocommit,
  }) {
    final _that = this;
    switch (_that) {
      case OpenStreamReq():
        return openStream(_that);
      case CloseStreamReq():
        return closeStream(_that);
      case ExecuteReq():
        return execute(_that);
      case BatchReq():
        return batch(_that);
      case OpenCursorReq():
        return openCursor(_that);
      case CloseCursorReq():
        return closeCursor(_that);
      case FetchCursorReq():
        return fetchCursor(_that);
      case SequenceReq():
        return sequence(_that);
      case DescribeReq():
        return describe(_that);
      case StoreSqlReq():
        return storeSql(_that);
      case CloseSqlReq():
        return closeSql(_that);
      case GetAutocommitReq():
        return getAutocommit(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OpenStreamReq value)? openStream,
    TResult? Function(CloseStreamReq value)? closeStream,
    TResult? Function(ExecuteReq value)? execute,
    TResult? Function(BatchReq value)? batch,
    TResult? Function(OpenCursorReq value)? openCursor,
    TResult? Function(CloseCursorReq value)? closeCursor,
    TResult? Function(FetchCursorReq value)? fetchCursor,
    TResult? Function(SequenceReq value)? sequence,
    TResult? Function(DescribeReq value)? describe,
    TResult? Function(StoreSqlReq value)? storeSql,
    TResult? Function(CloseSqlReq value)? closeSql,
    TResult? Function(GetAutocommitReq value)? getAutocommit,
  }) {
    final _that = this;
    switch (_that) {
      case OpenStreamReq() when openStream != null:
        return openStream(_that);
      case CloseStreamReq() when closeStream != null:
        return closeStream(_that);
      case ExecuteReq() when execute != null:
        return execute(_that);
      case BatchReq() when batch != null:
        return batch(_that);
      case OpenCursorReq() when openCursor != null:
        return openCursor(_that);
      case CloseCursorReq() when closeCursor != null:
        return closeCursor(_that);
      case FetchCursorReq() when fetchCursor != null:
        return fetchCursor(_that);
      case SequenceReq() when sequence != null:
        return sequence(_that);
      case DescribeReq() when describe != null:
        return describe(_that);
      case StoreSqlReq() when storeSql != null:
        return storeSql(_that);
      case CloseSqlReq() when closeSql != null:
        return closeSql(_that);
      case GetAutocommitReq() when getAutocommit != null:
        return getAutocommit(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int streamId)? openStream,
    TResult Function(int streamId)? closeStream,
    TResult Function(int streamId, Stmt stmt)? execute,
    TResult Function(int streamId, Batch batch)? batch,
    TResult Function(int streamId, int cursorId, Batch batch)? openCursor,
    TResult Function(int cursorId)? closeCursor,
    TResult Function(int cursorId, int maxCount)? fetchCursor,
    TResult Function(int streamId, String? sql, int? sqlId)? sequence,
    TResult Function(int streamId, String? sql, int? sqlId)? describe,
    TResult Function(int sqlId, String sql)? storeSql,
    TResult Function(int sqlId)? closeSql,
    TResult Function(int streamId)? getAutocommit,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case OpenStreamReq() when openStream != null:
        return openStream(_that.streamId);
      case CloseStreamReq() when closeStream != null:
        return closeStream(_that.streamId);
      case ExecuteReq() when execute != null:
        return execute(_that.streamId, _that.stmt);
      case BatchReq() when batch != null:
        return batch(_that.streamId, _that.batch);
      case OpenCursorReq() when openCursor != null:
        return openCursor(_that.streamId, _that.cursorId, _that.batch);
      case CloseCursorReq() when closeCursor != null:
        return closeCursor(_that.cursorId);
      case FetchCursorReq() when fetchCursor != null:
        return fetchCursor(_that.cursorId, _that.maxCount);
      case SequenceReq() when sequence != null:
        return sequence(_that.streamId, _that.sql, _that.sqlId);
      case DescribeReq() when describe != null:
        return describe(_that.streamId, _that.sql, _that.sqlId);
      case StoreSqlReq() when storeSql != null:
        return storeSql(_that.sqlId, _that.sql);
      case CloseSqlReq() when closeSql != null:
        return closeSql(_that.sqlId);
      case GetAutocommitReq() when getAutocommit != null:
        return getAutocommit(_that.streamId);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int streamId) openStream,
    required TResult Function(int streamId) closeStream,
    required TResult Function(int streamId, Stmt stmt) execute,
    required TResult Function(int streamId, Batch batch) batch,
    required TResult Function(int streamId, int cursorId, Batch batch)
        openCursor,
    required TResult Function(int cursorId) closeCursor,
    required TResult Function(int cursorId, int maxCount) fetchCursor,
    required TResult Function(int streamId, String? sql, int? sqlId) sequence,
    required TResult Function(int streamId, String? sql, int? sqlId) describe,
    required TResult Function(int sqlId, String sql) storeSql,
    required TResult Function(int sqlId) closeSql,
    required TResult Function(int streamId) getAutocommit,
  }) {
    final _that = this;
    switch (_that) {
      case OpenStreamReq():
        return openStream(_that.streamId);
      case CloseStreamReq():
        return closeStream(_that.streamId);
      case ExecuteReq():
        return execute(_that.streamId, _that.stmt);
      case BatchReq():
        return batch(_that.streamId, _that.batch);
      case OpenCursorReq():
        return openCursor(_that.streamId, _that.cursorId, _that.batch);
      case CloseCursorReq():
        return closeCursor(_that.cursorId);
      case FetchCursorReq():
        return fetchCursor(_that.cursorId, _that.maxCount);
      case SequenceReq():
        return sequence(_that.streamId, _that.sql, _that.sqlId);
      case DescribeReq():
        return describe(_that.streamId, _that.sql, _that.sqlId);
      case StoreSqlReq():
        return storeSql(_that.sqlId, _that.sql);
      case CloseSqlReq():
        return closeSql(_that.sqlId);
      case GetAutocommitReq():
        return getAutocommit(_that.streamId);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int streamId)? openStream,
    TResult? Function(int streamId)? closeStream,
    TResult? Function(int streamId, Stmt stmt)? execute,
    TResult? Function(int streamId, Batch batch)? batch,
    TResult? Function(int streamId, int cursorId, Batch batch)? openCursor,
    TResult? Function(int cursorId)? closeCursor,
    TResult? Function(int cursorId, int maxCount)? fetchCursor,
    TResult? Function(int streamId, String? sql, int? sqlId)? sequence,
    TResult? Function(int streamId, String? sql, int? sqlId)? describe,
    TResult? Function(int sqlId, String sql)? storeSql,
    TResult? Function(int sqlId)? closeSql,
    TResult? Function(int streamId)? getAutocommit,
  }) {
    final _that = this;
    switch (_that) {
      case OpenStreamReq() when openStream != null:
        return openStream(_that.streamId);
      case CloseStreamReq() when closeStream != null:
        return closeStream(_that.streamId);
      case ExecuteReq() when execute != null:
        return execute(_that.streamId, _that.stmt);
      case BatchReq() when batch != null:
        return batch(_that.streamId, _that.batch);
      case OpenCursorReq() when openCursor != null:
        return openCursor(_that.streamId, _that.cursorId, _that.batch);
      case CloseCursorReq() when closeCursor != null:
        return closeCursor(_that.cursorId);
      case FetchCursorReq() when fetchCursor != null:
        return fetchCursor(_that.cursorId, _that.maxCount);
      case SequenceReq() when sequence != null:
        return sequence(_that.streamId, _that.sql, _that.sqlId);
      case DescribeReq() when describe != null:
        return describe(_that.streamId, _that.sql, _that.sqlId);
      case StoreSqlReq() when storeSql != null:
        return storeSql(_that.sqlId, _that.sql);
      case CloseSqlReq() when closeSql != null:
        return closeSql(_that.sqlId);
      case GetAutocommitReq() when getAutocommit != null:
        return getAutocommit(_that.streamId);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class OpenStreamReq extends Request {
  const OpenStreamReq({required this.streamId, String? $type})
      : $type = $type ?? 'open_stream',
        super._();
  factory OpenStreamReq.fromJson(Map<String, dynamic> json) =>
      _$OpenStreamReqFromJson(json);

  final int streamId;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of Request
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OpenStreamReqCopyWith<OpenStreamReq> get copyWith =>
      _$OpenStreamReqCopyWithImpl<OpenStreamReq>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OpenStreamReqToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OpenStreamReq &&
            (identical(other.streamId, streamId) ||
                other.streamId == streamId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, streamId);
  }

  @override
  String toString() {
    return 'Request.openStream(streamId: $streamId)';
  }
}

/// @nodoc
abstract mixin class $OpenStreamReqCopyWith<$Res>
    implements $RequestCopyWith<$Res> {
  factory $OpenStreamReqCopyWith(
          OpenStreamReq value, $Res Function(OpenStreamReq) _then) =
      _$OpenStreamReqCopyWithImpl;
  @useResult
  $Res call({int streamId});
}

/// @nodoc
class _$OpenStreamReqCopyWithImpl<$Res>
    implements $OpenStreamReqCopyWith<$Res> {
  _$OpenStreamReqCopyWithImpl(this._self, this._then);

  final OpenStreamReq _self;
  final $Res Function(OpenStreamReq) _then;

  /// Create a copy of Request
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? streamId = null,
  }) {
    return _then(OpenStreamReq(
      streamId: null == streamId
          ? _self.streamId
          : streamId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class CloseStreamReq extends Request {
  const CloseStreamReq({required this.streamId, String? $type})
      : $type = $type ?? 'close_stream',
        super._();
  factory CloseStreamReq.fromJson(Map<String, dynamic> json) =>
      _$CloseStreamReqFromJson(json);

  final int streamId;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of Request
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CloseStreamReqCopyWith<CloseStreamReq> get copyWith =>
      _$CloseStreamReqCopyWithImpl<CloseStreamReq>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CloseStreamReqToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CloseStreamReq &&
            (identical(other.streamId, streamId) ||
                other.streamId == streamId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, streamId);
  }

  @override
  String toString() {
    return 'Request.closeStream(streamId: $streamId)';
  }
}

/// @nodoc
abstract mixin class $CloseStreamReqCopyWith<$Res>
    implements $RequestCopyWith<$Res> {
  factory $CloseStreamReqCopyWith(
          CloseStreamReq value, $Res Function(CloseStreamReq) _then) =
      _$CloseStreamReqCopyWithImpl;
  @useResult
  $Res call({int streamId});
}

/// @nodoc
class _$CloseStreamReqCopyWithImpl<$Res>
    implements $CloseStreamReqCopyWith<$Res> {
  _$CloseStreamReqCopyWithImpl(this._self, this._then);

  final CloseStreamReq _self;
  final $Res Function(CloseStreamReq) _then;

  /// Create a copy of Request
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? streamId = null,
  }) {
    return _then(CloseStreamReq(
      streamId: null == streamId
          ? _self.streamId
          : streamId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class ExecuteReq extends Request {
  const ExecuteReq({required this.streamId, required this.stmt, String? $type})
      : $type = $type ?? 'execute',
        super._();
  factory ExecuteReq.fromJson(Map<String, dynamic> json) =>
      _$ExecuteReqFromJson(json);

  final int streamId;
  final Stmt stmt;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of Request
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ExecuteReqCopyWith<ExecuteReq> get copyWith =>
      _$ExecuteReqCopyWithImpl<ExecuteReq>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ExecuteReqToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ExecuteReq &&
            (identical(other.streamId, streamId) ||
                other.streamId == streamId) &&
            (identical(other.stmt, stmt) || other.stmt == stmt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, streamId, stmt);
  }

  @override
  String toString() {
    return 'Request.execute(streamId: $streamId, stmt: $stmt)';
  }
}

/// @nodoc
abstract mixin class $ExecuteReqCopyWith<$Res>
    implements $RequestCopyWith<$Res> {
  factory $ExecuteReqCopyWith(
          ExecuteReq value, $Res Function(ExecuteReq) _then) =
      _$ExecuteReqCopyWithImpl;
  @useResult
  $Res call({int streamId, Stmt stmt});

  $StmtCopyWith<$Res> get stmt;
}

/// @nodoc
class _$ExecuteReqCopyWithImpl<$Res> implements $ExecuteReqCopyWith<$Res> {
  _$ExecuteReqCopyWithImpl(this._self, this._then);

  final ExecuteReq _self;
  final $Res Function(ExecuteReq) _then;

  /// Create a copy of Request
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? streamId = null,
    Object? stmt = null,
  }) {
    return _then(ExecuteReq(
      streamId: null == streamId
          ? _self.streamId
          : streamId // ignore: cast_nullable_to_non_nullable
              as int,
      stmt: null == stmt
          ? _self.stmt
          : stmt // ignore: cast_nullable_to_non_nullable
              as Stmt,
    ));
  }

  /// Create a copy of Request
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StmtCopyWith<$Res> get stmt {
    return $StmtCopyWith<$Res>(_self.stmt, (value) {
      return _then(_self.copyWith(stmt: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class BatchReq extends Request {
  const BatchReq({required this.streamId, required this.batch, String? $type})
      : $type = $type ?? 'batch',
        super._();
  factory BatchReq.fromJson(Map<String, dynamic> json) =>
      _$BatchReqFromJson(json);

  final int streamId;
  final Batch batch;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of Request
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BatchReqCopyWith<BatchReq> get copyWith =>
      _$BatchReqCopyWithImpl<BatchReq>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BatchReqToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BatchReq &&
            (identical(other.streamId, streamId) ||
                other.streamId == streamId) &&
            (identical(other.batch, batch) || other.batch == batch));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, streamId, batch);
  }

  @override
  String toString() {
    return 'Request.batch(streamId: $streamId, batch: $batch)';
  }
}

/// @nodoc
abstract mixin class $BatchReqCopyWith<$Res> implements $RequestCopyWith<$Res> {
  factory $BatchReqCopyWith(BatchReq value, $Res Function(BatchReq) _then) =
      _$BatchReqCopyWithImpl;
  @useResult
  $Res call({int streamId, Batch batch});

  $BatchCopyWith<$Res> get batch;
}

/// @nodoc
class _$BatchReqCopyWithImpl<$Res> implements $BatchReqCopyWith<$Res> {
  _$BatchReqCopyWithImpl(this._self, this._then);

  final BatchReq _self;
  final $Res Function(BatchReq) _then;

  /// Create a copy of Request
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? streamId = null,
    Object? batch = null,
  }) {
    return _then(BatchReq(
      streamId: null == streamId
          ? _self.streamId
          : streamId // ignore: cast_nullable_to_non_nullable
              as int,
      batch: null == batch
          ? _self.batch
          : batch // ignore: cast_nullable_to_non_nullable
              as Batch,
    ));
  }

  /// Create a copy of Request
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BatchCopyWith<$Res> get batch {
    return $BatchCopyWith<$Res>(_self.batch, (value) {
      return _then(_self.copyWith(batch: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class OpenCursorReq extends Request {
  const OpenCursorReq(
      {required this.streamId,
      required this.cursorId,
      required this.batch,
      String? $type})
      : $type = $type ?? 'open_cursor',
        super._();
  factory OpenCursorReq.fromJson(Map<String, dynamic> json) =>
      _$OpenCursorReqFromJson(json);

  final int streamId;
  final int cursorId;
  final Batch batch;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of Request
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OpenCursorReqCopyWith<OpenCursorReq> get copyWith =>
      _$OpenCursorReqCopyWithImpl<OpenCursorReq>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OpenCursorReqToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OpenCursorReq &&
            (identical(other.streamId, streamId) ||
                other.streamId == streamId) &&
            (identical(other.cursorId, cursorId) ||
                other.cursorId == cursorId) &&
            (identical(other.batch, batch) || other.batch == batch));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, streamId, cursorId, batch);
  }

  @override
  String toString() {
    return 'Request.openCursor(streamId: $streamId, cursorId: $cursorId, batch: $batch)';
  }
}

/// @nodoc
abstract mixin class $OpenCursorReqCopyWith<$Res>
    implements $RequestCopyWith<$Res> {
  factory $OpenCursorReqCopyWith(
          OpenCursorReq value, $Res Function(OpenCursorReq) _then) =
      _$OpenCursorReqCopyWithImpl;
  @useResult
  $Res call({int streamId, int cursorId, Batch batch});

  $BatchCopyWith<$Res> get batch;
}

/// @nodoc
class _$OpenCursorReqCopyWithImpl<$Res>
    implements $OpenCursorReqCopyWith<$Res> {
  _$OpenCursorReqCopyWithImpl(this._self, this._then);

  final OpenCursorReq _self;
  final $Res Function(OpenCursorReq) _then;

  /// Create a copy of Request
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? streamId = null,
    Object? cursorId = null,
    Object? batch = null,
  }) {
    return _then(OpenCursorReq(
      streamId: null == streamId
          ? _self.streamId
          : streamId // ignore: cast_nullable_to_non_nullable
              as int,
      cursorId: null == cursorId
          ? _self.cursorId
          : cursorId // ignore: cast_nullable_to_non_nullable
              as int,
      batch: null == batch
          ? _self.batch
          : batch // ignore: cast_nullable_to_non_nullable
              as Batch,
    ));
  }

  /// Create a copy of Request
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BatchCopyWith<$Res> get batch {
    return $BatchCopyWith<$Res>(_self.batch, (value) {
      return _then(_self.copyWith(batch: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class CloseCursorReq extends Request {
  const CloseCursorReq({required this.cursorId, String? $type})
      : $type = $type ?? 'close_cursor',
        super._();
  factory CloseCursorReq.fromJson(Map<String, dynamic> json) =>
      _$CloseCursorReqFromJson(json);

  final int cursorId;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of Request
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CloseCursorReqCopyWith<CloseCursorReq> get copyWith =>
      _$CloseCursorReqCopyWithImpl<CloseCursorReq>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CloseCursorReqToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CloseCursorReq &&
            (identical(other.cursorId, cursorId) ||
                other.cursorId == cursorId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, cursorId);
  }

  @override
  String toString() {
    return 'Request.closeCursor(cursorId: $cursorId)';
  }
}

/// @nodoc
abstract mixin class $CloseCursorReqCopyWith<$Res>
    implements $RequestCopyWith<$Res> {
  factory $CloseCursorReqCopyWith(
          CloseCursorReq value, $Res Function(CloseCursorReq) _then) =
      _$CloseCursorReqCopyWithImpl;
  @useResult
  $Res call({int cursorId});
}

/// @nodoc
class _$CloseCursorReqCopyWithImpl<$Res>
    implements $CloseCursorReqCopyWith<$Res> {
  _$CloseCursorReqCopyWithImpl(this._self, this._then);

  final CloseCursorReq _self;
  final $Res Function(CloseCursorReq) _then;

  /// Create a copy of Request
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? cursorId = null,
  }) {
    return _then(CloseCursorReq(
      cursorId: null == cursorId
          ? _self.cursorId
          : cursorId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class FetchCursorReq extends Request {
  const FetchCursorReq(
      {required this.cursorId, required this.maxCount, String? $type})
      : $type = $type ?? 'fetch_cursor',
        super._();
  factory FetchCursorReq.fromJson(Map<String, dynamic> json) =>
      _$FetchCursorReqFromJson(json);

  final int cursorId;
  final int maxCount;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of Request
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FetchCursorReqCopyWith<FetchCursorReq> get copyWith =>
      _$FetchCursorReqCopyWithImpl<FetchCursorReq>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FetchCursorReqToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FetchCursorReq &&
            (identical(other.cursorId, cursorId) ||
                other.cursorId == cursorId) &&
            (identical(other.maxCount, maxCount) ||
                other.maxCount == maxCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, cursorId, maxCount);
  }

  @override
  String toString() {
    return 'Request.fetchCursor(cursorId: $cursorId, maxCount: $maxCount)';
  }
}

/// @nodoc
abstract mixin class $FetchCursorReqCopyWith<$Res>
    implements $RequestCopyWith<$Res> {
  factory $FetchCursorReqCopyWith(
          FetchCursorReq value, $Res Function(FetchCursorReq) _then) =
      _$FetchCursorReqCopyWithImpl;
  @useResult
  $Res call({int cursorId, int maxCount});
}

/// @nodoc
class _$FetchCursorReqCopyWithImpl<$Res>
    implements $FetchCursorReqCopyWith<$Res> {
  _$FetchCursorReqCopyWithImpl(this._self, this._then);

  final FetchCursorReq _self;
  final $Res Function(FetchCursorReq) _then;

  /// Create a copy of Request
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? cursorId = null,
    Object? maxCount = null,
  }) {
    return _then(FetchCursorReq(
      cursorId: null == cursorId
          ? _self.cursorId
          : cursorId // ignore: cast_nullable_to_non_nullable
              as int,
      maxCount: null == maxCount
          ? _self.maxCount
          : maxCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class SequenceReq extends Request {
  const SequenceReq(
      {required this.streamId, this.sql, this.sqlId, String? $type})
      : $type = $type ?? 'sequence',
        super._();
  factory SequenceReq.fromJson(Map<String, dynamic> json) =>
      _$SequenceReqFromJson(json);

  final int streamId;
  final String? sql;
  final int? sqlId;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of Request
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SequenceReqCopyWith<SequenceReq> get copyWith =>
      _$SequenceReqCopyWithImpl<SequenceReq>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SequenceReqToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SequenceReq &&
            (identical(other.streamId, streamId) ||
                other.streamId == streamId) &&
            (identical(other.sql, sql) || other.sql == sql) &&
            (identical(other.sqlId, sqlId) || other.sqlId == sqlId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, streamId, sql, sqlId);
  }

  @override
  String toString() {
    return 'Request.sequence(streamId: $streamId, sql: $sql, sqlId: $sqlId)';
  }
}

/// @nodoc
abstract mixin class $SequenceReqCopyWith<$Res>
    implements $RequestCopyWith<$Res> {
  factory $SequenceReqCopyWith(
          SequenceReq value, $Res Function(SequenceReq) _then) =
      _$SequenceReqCopyWithImpl;
  @useResult
  $Res call({int streamId, String? sql, int? sqlId});
}

/// @nodoc
class _$SequenceReqCopyWithImpl<$Res> implements $SequenceReqCopyWith<$Res> {
  _$SequenceReqCopyWithImpl(this._self, this._then);

  final SequenceReq _self;
  final $Res Function(SequenceReq) _then;

  /// Create a copy of Request
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? streamId = null,
    Object? sql = freezed,
    Object? sqlId = freezed,
  }) {
    return _then(SequenceReq(
      streamId: null == streamId
          ? _self.streamId
          : streamId // ignore: cast_nullable_to_non_nullable
              as int,
      sql: freezed == sql
          ? _self.sql
          : sql // ignore: cast_nullable_to_non_nullable
              as String?,
      sqlId: freezed == sqlId
          ? _self.sqlId
          : sqlId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class DescribeReq extends Request {
  const DescribeReq(
      {required this.streamId, this.sql, this.sqlId, String? $type})
      : $type = $type ?? 'describe',
        super._();
  factory DescribeReq.fromJson(Map<String, dynamic> json) =>
      _$DescribeReqFromJson(json);

  final int streamId;
  final String? sql;
  final int? sqlId;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of Request
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DescribeReqCopyWith<DescribeReq> get copyWith =>
      _$DescribeReqCopyWithImpl<DescribeReq>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DescribeReqToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DescribeReq &&
            (identical(other.streamId, streamId) ||
                other.streamId == streamId) &&
            (identical(other.sql, sql) || other.sql == sql) &&
            (identical(other.sqlId, sqlId) || other.sqlId == sqlId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, streamId, sql, sqlId);
  }

  @override
  String toString() {
    return 'Request.describe(streamId: $streamId, sql: $sql, sqlId: $sqlId)';
  }
}

/// @nodoc
abstract mixin class $DescribeReqCopyWith<$Res>
    implements $RequestCopyWith<$Res> {
  factory $DescribeReqCopyWith(
          DescribeReq value, $Res Function(DescribeReq) _then) =
      _$DescribeReqCopyWithImpl;
  @useResult
  $Res call({int streamId, String? sql, int? sqlId});
}

/// @nodoc
class _$DescribeReqCopyWithImpl<$Res> implements $DescribeReqCopyWith<$Res> {
  _$DescribeReqCopyWithImpl(this._self, this._then);

  final DescribeReq _self;
  final $Res Function(DescribeReq) _then;

  /// Create a copy of Request
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? streamId = null,
    Object? sql = freezed,
    Object? sqlId = freezed,
  }) {
    return _then(DescribeReq(
      streamId: null == streamId
          ? _self.streamId
          : streamId // ignore: cast_nullable_to_non_nullable
              as int,
      sql: freezed == sql
          ? _self.sql
          : sql // ignore: cast_nullable_to_non_nullable
              as String?,
      sqlId: freezed == sqlId
          ? _self.sqlId
          : sqlId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class StoreSqlReq extends Request {
  const StoreSqlReq({required this.sqlId, required this.sql, String? $type})
      : $type = $type ?? 'store_sql',
        super._();
  factory StoreSqlReq.fromJson(Map<String, dynamic> json) =>
      _$StoreSqlReqFromJson(json);

  final int sqlId;
  final String sql;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of Request
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StoreSqlReqCopyWith<StoreSqlReq> get copyWith =>
      _$StoreSqlReqCopyWithImpl<StoreSqlReq>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StoreSqlReqToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StoreSqlReq &&
            (identical(other.sqlId, sqlId) || other.sqlId == sqlId) &&
            (identical(other.sql, sql) || other.sql == sql));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, sqlId, sql);
  }

  @override
  String toString() {
    return 'Request.storeSql(sqlId: $sqlId, sql: $sql)';
  }
}

/// @nodoc
abstract mixin class $StoreSqlReqCopyWith<$Res>
    implements $RequestCopyWith<$Res> {
  factory $StoreSqlReqCopyWith(
          StoreSqlReq value, $Res Function(StoreSqlReq) _then) =
      _$StoreSqlReqCopyWithImpl;
  @useResult
  $Res call({int sqlId, String sql});
}

/// @nodoc
class _$StoreSqlReqCopyWithImpl<$Res> implements $StoreSqlReqCopyWith<$Res> {
  _$StoreSqlReqCopyWithImpl(this._self, this._then);

  final StoreSqlReq _self;
  final $Res Function(StoreSqlReq) _then;

  /// Create a copy of Request
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? sqlId = null,
    Object? sql = null,
  }) {
    return _then(StoreSqlReq(
      sqlId: null == sqlId
          ? _self.sqlId
          : sqlId // ignore: cast_nullable_to_non_nullable
              as int,
      sql: null == sql
          ? _self.sql
          : sql // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class CloseSqlReq extends Request {
  const CloseSqlReq({required this.sqlId, String? $type})
      : $type = $type ?? 'close_sql',
        super._();
  factory CloseSqlReq.fromJson(Map<String, dynamic> json) =>
      _$CloseSqlReqFromJson(json);

  final int sqlId;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of Request
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CloseSqlReqCopyWith<CloseSqlReq> get copyWith =>
      _$CloseSqlReqCopyWithImpl<CloseSqlReq>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CloseSqlReqToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CloseSqlReq &&
            (identical(other.sqlId, sqlId) || other.sqlId == sqlId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, sqlId);
  }

  @override
  String toString() {
    return 'Request.closeSql(sqlId: $sqlId)';
  }
}

/// @nodoc
abstract mixin class $CloseSqlReqCopyWith<$Res>
    implements $RequestCopyWith<$Res> {
  factory $CloseSqlReqCopyWith(
          CloseSqlReq value, $Res Function(CloseSqlReq) _then) =
      _$CloseSqlReqCopyWithImpl;
  @useResult
  $Res call({int sqlId});
}

/// @nodoc
class _$CloseSqlReqCopyWithImpl<$Res> implements $CloseSqlReqCopyWith<$Res> {
  _$CloseSqlReqCopyWithImpl(this._self, this._then);

  final CloseSqlReq _self;
  final $Res Function(CloseSqlReq) _then;

  /// Create a copy of Request
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? sqlId = null,
  }) {
    return _then(CloseSqlReq(
      sqlId: null == sqlId
          ? _self.sqlId
          : sqlId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class GetAutocommitReq extends Request {
  const GetAutocommitReq({required this.streamId, String? $type})
      : $type = $type ?? 'get_autocommit',
        super._();
  factory GetAutocommitReq.fromJson(Map<String, dynamic> json) =>
      _$GetAutocommitReqFromJson(json);

  final int streamId;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of Request
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetAutocommitReqCopyWith<GetAutocommitReq> get copyWith =>
      _$GetAutocommitReqCopyWithImpl<GetAutocommitReq>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GetAutocommitReqToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetAutocommitReq &&
            (identical(other.streamId, streamId) ||
                other.streamId == streamId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, streamId);
  }

  @override
  String toString() {
    return 'Request.getAutocommit(streamId: $streamId)';
  }
}

/// @nodoc
abstract mixin class $GetAutocommitReqCopyWith<$Res>
    implements $RequestCopyWith<$Res> {
  factory $GetAutocommitReqCopyWith(
          GetAutocommitReq value, $Res Function(GetAutocommitReq) _then) =
      _$GetAutocommitReqCopyWithImpl;
  @useResult
  $Res call({int streamId});
}

/// @nodoc
class _$GetAutocommitReqCopyWithImpl<$Res>
    implements $GetAutocommitReqCopyWith<$Res> {
  _$GetAutocommitReqCopyWithImpl(this._self, this._then);

  final GetAutocommitReq _self;
  final $Res Function(GetAutocommitReq) _then;

  /// Create a copy of Request
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? streamId = null,
  }) {
    return _then(GetAutocommitReq(
      streamId: null == streamId
          ? _self.streamId
          : streamId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

Response _$ResponseFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'open_stream':
      return OpenStreamResp.fromJson(json);
    case 'close_stream':
      return CloseStreamResp.fromJson(json);
    case 'execute':
      return ExecuteResp.fromJson(json);
    case 'batch':
      return BatchResp.fromJson(json);
    case 'open_cursor':
      return OpenCursorResp.fromJson(json);
    case 'close_cursor':
      return CloseCursorResp.fromJson(json);
    case 'fetch_cursor':
      return FetchCursorResp.fromJson(json);
    case 'sequence':
      return SequenceResp.fromJson(json);
    case 'describe':
      return DescribeResp.fromJson(json);
    case 'store_sql':
      return StoreSqlResp.fromJson(json);
    case 'close_sql':
      return CloseSqlResp.fromJson(json);
    case 'get_autocommit':
      return GetAutocommitResp.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'type', 'Response', 'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$Response {
  /// Serializes this Response to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Response);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'Response()';
  }
}

/// @nodoc
class $ResponseCopyWith<$Res> {
  $ResponseCopyWith(Response _, $Res Function(Response) __);
}

/// Adds pattern-matching-related methods to [Response].
extension ResponsePatterns on Response {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OpenStreamResp value)? openStream,
    TResult Function(CloseStreamResp value)? closeStream,
    TResult Function(ExecuteResp value)? execute,
    TResult Function(BatchResp value)? batch,
    TResult Function(OpenCursorResp value)? openCursor,
    TResult Function(CloseCursorResp value)? closeCursor,
    TResult Function(FetchCursorResp value)? fetchCursor,
    TResult Function(SequenceResp value)? sequence,
    TResult Function(DescribeResp value)? describe,
    TResult Function(StoreSqlResp value)? storeSql,
    TResult Function(CloseSqlResp value)? closeSql,
    TResult Function(GetAutocommitResp value)? getAutocommit,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case OpenStreamResp() when openStream != null:
        return openStream(_that);
      case CloseStreamResp() when closeStream != null:
        return closeStream(_that);
      case ExecuteResp() when execute != null:
        return execute(_that);
      case BatchResp() when batch != null:
        return batch(_that);
      case OpenCursorResp() when openCursor != null:
        return openCursor(_that);
      case CloseCursorResp() when closeCursor != null:
        return closeCursor(_that);
      case FetchCursorResp() when fetchCursor != null:
        return fetchCursor(_that);
      case SequenceResp() when sequence != null:
        return sequence(_that);
      case DescribeResp() when describe != null:
        return describe(_that);
      case StoreSqlResp() when storeSql != null:
        return storeSql(_that);
      case CloseSqlResp() when closeSql != null:
        return closeSql(_that);
      case GetAutocommitResp() when getAutocommit != null:
        return getAutocommit(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OpenStreamResp value) openStream,
    required TResult Function(CloseStreamResp value) closeStream,
    required TResult Function(ExecuteResp value) execute,
    required TResult Function(BatchResp value) batch,
    required TResult Function(OpenCursorResp value) openCursor,
    required TResult Function(CloseCursorResp value) closeCursor,
    required TResult Function(FetchCursorResp value) fetchCursor,
    required TResult Function(SequenceResp value) sequence,
    required TResult Function(DescribeResp value) describe,
    required TResult Function(StoreSqlResp value) storeSql,
    required TResult Function(CloseSqlResp value) closeSql,
    required TResult Function(GetAutocommitResp value) getAutocommit,
  }) {
    final _that = this;
    switch (_that) {
      case OpenStreamResp():
        return openStream(_that);
      case CloseStreamResp():
        return closeStream(_that);
      case ExecuteResp():
        return execute(_that);
      case BatchResp():
        return batch(_that);
      case OpenCursorResp():
        return openCursor(_that);
      case CloseCursorResp():
        return closeCursor(_that);
      case FetchCursorResp():
        return fetchCursor(_that);
      case SequenceResp():
        return sequence(_that);
      case DescribeResp():
        return describe(_that);
      case StoreSqlResp():
        return storeSql(_that);
      case CloseSqlResp():
        return closeSql(_that);
      case GetAutocommitResp():
        return getAutocommit(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OpenStreamResp value)? openStream,
    TResult? Function(CloseStreamResp value)? closeStream,
    TResult? Function(ExecuteResp value)? execute,
    TResult? Function(BatchResp value)? batch,
    TResult? Function(OpenCursorResp value)? openCursor,
    TResult? Function(CloseCursorResp value)? closeCursor,
    TResult? Function(FetchCursorResp value)? fetchCursor,
    TResult? Function(SequenceResp value)? sequence,
    TResult? Function(DescribeResp value)? describe,
    TResult? Function(StoreSqlResp value)? storeSql,
    TResult? Function(CloseSqlResp value)? closeSql,
    TResult? Function(GetAutocommitResp value)? getAutocommit,
  }) {
    final _that = this;
    switch (_that) {
      case OpenStreamResp() when openStream != null:
        return openStream(_that);
      case CloseStreamResp() when closeStream != null:
        return closeStream(_that);
      case ExecuteResp() when execute != null:
        return execute(_that);
      case BatchResp() when batch != null:
        return batch(_that);
      case OpenCursorResp() when openCursor != null:
        return openCursor(_that);
      case CloseCursorResp() when closeCursor != null:
        return closeCursor(_that);
      case FetchCursorResp() when fetchCursor != null:
        return fetchCursor(_that);
      case SequenceResp() when sequence != null:
        return sequence(_that);
      case DescribeResp() when describe != null:
        return describe(_that);
      case StoreSqlResp() when storeSql != null:
        return storeSql(_that);
      case CloseSqlResp() when closeSql != null:
        return closeSql(_that);
      case GetAutocommitResp() when getAutocommit != null:
        return getAutocommit(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? openStream,
    TResult Function()? closeStream,
    TResult Function(StmtResult result)? execute,
    TResult Function(BatchResult result)? batch,
    TResult Function()? openCursor,
    TResult Function()? closeCursor,
    TResult Function(List<CursorEntry> entries, bool done)? fetchCursor,
    TResult Function()? sequence,
    TResult Function(DescribeResult result)? describe,
    TResult Function()? storeSql,
    TResult Function()? closeSql,
    TResult Function(bool isAutocommit)? getAutocommit,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case OpenStreamResp() when openStream != null:
        return openStream();
      case CloseStreamResp() when closeStream != null:
        return closeStream();
      case ExecuteResp() when execute != null:
        return execute(_that.result);
      case BatchResp() when batch != null:
        return batch(_that.result);
      case OpenCursorResp() when openCursor != null:
        return openCursor();
      case CloseCursorResp() when closeCursor != null:
        return closeCursor();
      case FetchCursorResp() when fetchCursor != null:
        return fetchCursor(_that.entries, _that.done);
      case SequenceResp() when sequence != null:
        return sequence();
      case DescribeResp() when describe != null:
        return describe(_that.result);
      case StoreSqlResp() when storeSql != null:
        return storeSql();
      case CloseSqlResp() when closeSql != null:
        return closeSql();
      case GetAutocommitResp() when getAutocommit != null:
        return getAutocommit(_that.isAutocommit);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() openStream,
    required TResult Function() closeStream,
    required TResult Function(StmtResult result) execute,
    required TResult Function(BatchResult result) batch,
    required TResult Function() openCursor,
    required TResult Function() closeCursor,
    required TResult Function(List<CursorEntry> entries, bool done) fetchCursor,
    required TResult Function() sequence,
    required TResult Function(DescribeResult result) describe,
    required TResult Function() storeSql,
    required TResult Function() closeSql,
    required TResult Function(bool isAutocommit) getAutocommit,
  }) {
    final _that = this;
    switch (_that) {
      case OpenStreamResp():
        return openStream();
      case CloseStreamResp():
        return closeStream();
      case ExecuteResp():
        return execute(_that.result);
      case BatchResp():
        return batch(_that.result);
      case OpenCursorResp():
        return openCursor();
      case CloseCursorResp():
        return closeCursor();
      case FetchCursorResp():
        return fetchCursor(_that.entries, _that.done);
      case SequenceResp():
        return sequence();
      case DescribeResp():
        return describe(_that.result);
      case StoreSqlResp():
        return storeSql();
      case CloseSqlResp():
        return closeSql();
      case GetAutocommitResp():
        return getAutocommit(_that.isAutocommit);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? openStream,
    TResult? Function()? closeStream,
    TResult? Function(StmtResult result)? execute,
    TResult? Function(BatchResult result)? batch,
    TResult? Function()? openCursor,
    TResult? Function()? closeCursor,
    TResult? Function(List<CursorEntry> entries, bool done)? fetchCursor,
    TResult? Function()? sequence,
    TResult? Function(DescribeResult result)? describe,
    TResult? Function()? storeSql,
    TResult? Function()? closeSql,
    TResult? Function(bool isAutocommit)? getAutocommit,
  }) {
    final _that = this;
    switch (_that) {
      case OpenStreamResp() when openStream != null:
        return openStream();
      case CloseStreamResp() when closeStream != null:
        return closeStream();
      case ExecuteResp() when execute != null:
        return execute(_that.result);
      case BatchResp() when batch != null:
        return batch(_that.result);
      case OpenCursorResp() when openCursor != null:
        return openCursor();
      case CloseCursorResp() when closeCursor != null:
        return closeCursor();
      case FetchCursorResp() when fetchCursor != null:
        return fetchCursor(_that.entries, _that.done);
      case SequenceResp() when sequence != null:
        return sequence();
      case DescribeResp() when describe != null:
        return describe(_that.result);
      case StoreSqlResp() when storeSql != null:
        return storeSql();
      case CloseSqlResp() when closeSql != null:
        return closeSql();
      case GetAutocommitResp() when getAutocommit != null:
        return getAutocommit(_that.isAutocommit);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class OpenStreamResp extends Response {
  const OpenStreamResp({String? $type})
      : $type = $type ?? 'open_stream',
        super._();
  factory OpenStreamResp.fromJson(Map<String, dynamic> json) =>
      _$OpenStreamRespFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$OpenStreamRespToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is OpenStreamResp);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'Response.openStream()';
  }
}

/// @nodoc
@JsonSerializable()
class CloseStreamResp extends Response {
  const CloseStreamResp({String? $type})
      : $type = $type ?? 'close_stream',
        super._();
  factory CloseStreamResp.fromJson(Map<String, dynamic> json) =>
      _$CloseStreamRespFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$CloseStreamRespToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CloseStreamResp);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'Response.closeStream()';
  }
}

/// @nodoc
@JsonSerializable()
class ExecuteResp extends Response {
  const ExecuteResp({required this.result, String? $type})
      : $type = $type ?? 'execute',
        super._();
  factory ExecuteResp.fromJson(Map<String, dynamic> json) =>
      _$ExecuteRespFromJson(json);

  final StmtResult result;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ExecuteRespCopyWith<ExecuteResp> get copyWith =>
      _$ExecuteRespCopyWithImpl<ExecuteResp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ExecuteRespToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ExecuteResp &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, result);
  }

  @override
  String toString() {
    return 'Response.execute(result: $result)';
  }
}

/// @nodoc
abstract mixin class $ExecuteRespCopyWith<$Res>
    implements $ResponseCopyWith<$Res> {
  factory $ExecuteRespCopyWith(
          ExecuteResp value, $Res Function(ExecuteResp) _then) =
      _$ExecuteRespCopyWithImpl;
  @useResult
  $Res call({StmtResult result});

  $StmtResultCopyWith<$Res> get result;
}

/// @nodoc
class _$ExecuteRespCopyWithImpl<$Res> implements $ExecuteRespCopyWith<$Res> {
  _$ExecuteRespCopyWithImpl(this._self, this._then);

  final ExecuteResp _self;
  final $Res Function(ExecuteResp) _then;

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? result = null,
  }) {
    return _then(ExecuteResp(
      result: null == result
          ? _self.result
          : result // ignore: cast_nullable_to_non_nullable
              as StmtResult,
    ));
  }

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StmtResultCopyWith<$Res> get result {
    return $StmtResultCopyWith<$Res>(_self.result, (value) {
      return _then(_self.copyWith(result: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class BatchResp extends Response {
  const BatchResp({required this.result, String? $type})
      : $type = $type ?? 'batch',
        super._();
  factory BatchResp.fromJson(Map<String, dynamic> json) =>
      _$BatchRespFromJson(json);

  final BatchResult result;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BatchRespCopyWith<BatchResp> get copyWith =>
      _$BatchRespCopyWithImpl<BatchResp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BatchRespToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BatchResp &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, result);
  }

  @override
  String toString() {
    return 'Response.batch(result: $result)';
  }
}

/// @nodoc
abstract mixin class $BatchRespCopyWith<$Res>
    implements $ResponseCopyWith<$Res> {
  factory $BatchRespCopyWith(BatchResp value, $Res Function(BatchResp) _then) =
      _$BatchRespCopyWithImpl;
  @useResult
  $Res call({BatchResult result});

  $BatchResultCopyWith<$Res> get result;
}

/// @nodoc
class _$BatchRespCopyWithImpl<$Res> implements $BatchRespCopyWith<$Res> {
  _$BatchRespCopyWithImpl(this._self, this._then);

  final BatchResp _self;
  final $Res Function(BatchResp) _then;

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? result = null,
  }) {
    return _then(BatchResp(
      result: null == result
          ? _self.result
          : result // ignore: cast_nullable_to_non_nullable
              as BatchResult,
    ));
  }

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BatchResultCopyWith<$Res> get result {
    return $BatchResultCopyWith<$Res>(_self.result, (value) {
      return _then(_self.copyWith(result: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class OpenCursorResp extends Response {
  const OpenCursorResp({String? $type})
      : $type = $type ?? 'open_cursor',
        super._();
  factory OpenCursorResp.fromJson(Map<String, dynamic> json) =>
      _$OpenCursorRespFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$OpenCursorRespToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is OpenCursorResp);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'Response.openCursor()';
  }
}

/// @nodoc
@JsonSerializable()
class CloseCursorResp extends Response {
  const CloseCursorResp({String? $type})
      : $type = $type ?? 'close_cursor',
        super._();
  factory CloseCursorResp.fromJson(Map<String, dynamic> json) =>
      _$CloseCursorRespFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$CloseCursorRespToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CloseCursorResp);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'Response.closeCursor()';
  }
}

/// @nodoc
@JsonSerializable()
class FetchCursorResp extends Response {
  const FetchCursorResp(
      {required List<CursorEntry> entries, required this.done, String? $type})
      : _entries = entries,
        $type = $type ?? 'fetch_cursor',
        super._();
  factory FetchCursorResp.fromJson(Map<String, dynamic> json) =>
      _$FetchCursorRespFromJson(json);

  final List<CursorEntry> _entries;
  List<CursorEntry> get entries {
    if (_entries is EqualUnmodifiableListView) return _entries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_entries);
  }

  final bool done;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FetchCursorRespCopyWith<FetchCursorResp> get copyWith =>
      _$FetchCursorRespCopyWithImpl<FetchCursorResp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FetchCursorRespToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FetchCursorResp &&
            const DeepCollectionEquality().equals(other.entries, _entries) &&
            (identical(other.done, done) || other.done == done));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(
        runtimeType, const DeepCollectionEquality().hash(_entries), done);
  }

  @override
  String toString() {
    return 'Response.fetchCursor(entries: $entries, done: $done)';
  }
}

/// @nodoc
abstract mixin class $FetchCursorRespCopyWith<$Res>
    implements $ResponseCopyWith<$Res> {
  factory $FetchCursorRespCopyWith(
          FetchCursorResp value, $Res Function(FetchCursorResp) _then) =
      _$FetchCursorRespCopyWithImpl;
  @useResult
  $Res call({List<CursorEntry> entries, bool done});
}

/// @nodoc
class _$FetchCursorRespCopyWithImpl<$Res>
    implements $FetchCursorRespCopyWith<$Res> {
  _$FetchCursorRespCopyWithImpl(this._self, this._then);

  final FetchCursorResp _self;
  final $Res Function(FetchCursorResp) _then;

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? entries = null,
    Object? done = null,
  }) {
    return _then(FetchCursorResp(
      entries: null == entries
          ? _self._entries
          : entries // ignore: cast_nullable_to_non_nullable
              as List<CursorEntry>,
      done: null == done
          ? _self.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class SequenceResp extends Response {
  const SequenceResp({String? $type})
      : $type = $type ?? 'sequence',
        super._();
  factory SequenceResp.fromJson(Map<String, dynamic> json) =>
      _$SequenceRespFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$SequenceRespToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SequenceResp);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'Response.sequence()';
  }
}

/// @nodoc
@JsonSerializable()
class DescribeResp extends Response {
  const DescribeResp({required this.result, String? $type})
      : $type = $type ?? 'describe',
        super._();
  factory DescribeResp.fromJson(Map<String, dynamic> json) =>
      _$DescribeRespFromJson(json);

  final DescribeResult result;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DescribeRespCopyWith<DescribeResp> get copyWith =>
      _$DescribeRespCopyWithImpl<DescribeResp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DescribeRespToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DescribeResp &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, result);
  }

  @override
  String toString() {
    return 'Response.describe(result: $result)';
  }
}

/// @nodoc
abstract mixin class $DescribeRespCopyWith<$Res>
    implements $ResponseCopyWith<$Res> {
  factory $DescribeRespCopyWith(
          DescribeResp value, $Res Function(DescribeResp) _then) =
      _$DescribeRespCopyWithImpl;
  @useResult
  $Res call({DescribeResult result});

  $DescribeResultCopyWith<$Res> get result;
}

/// @nodoc
class _$DescribeRespCopyWithImpl<$Res> implements $DescribeRespCopyWith<$Res> {
  _$DescribeRespCopyWithImpl(this._self, this._then);

  final DescribeResp _self;
  final $Res Function(DescribeResp) _then;

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? result = null,
  }) {
    return _then(DescribeResp(
      result: null == result
          ? _self.result
          : result // ignore: cast_nullable_to_non_nullable
              as DescribeResult,
    ));
  }

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DescribeResultCopyWith<$Res> get result {
    return $DescribeResultCopyWith<$Res>(_self.result, (value) {
      return _then(_self.copyWith(result: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class StoreSqlResp extends Response {
  const StoreSqlResp({String? $type})
      : $type = $type ?? 'store_sql',
        super._();
  factory StoreSqlResp.fromJson(Map<String, dynamic> json) =>
      _$StoreSqlRespFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$StoreSqlRespToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is StoreSqlResp);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'Response.storeSql()';
  }
}

/// @nodoc
@JsonSerializable()
class CloseSqlResp extends Response {
  const CloseSqlResp({String? $type})
      : $type = $type ?? 'close_sql',
        super._();
  factory CloseSqlResp.fromJson(Map<String, dynamic> json) =>
      _$CloseSqlRespFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$CloseSqlRespToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CloseSqlResp);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'Response.closeSql()';
  }
}

/// @nodoc
@JsonSerializable()
class GetAutocommitResp extends Response {
  const GetAutocommitResp({required this.isAutocommit, String? $type})
      : $type = $type ?? 'get_autocommit',
        super._();
  factory GetAutocommitResp.fromJson(Map<String, dynamic> json) =>
      _$GetAutocommitRespFromJson(json);

  final bool isAutocommit;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetAutocommitRespCopyWith<GetAutocommitResp> get copyWith =>
      _$GetAutocommitRespCopyWithImpl<GetAutocommitResp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GetAutocommitRespToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetAutocommitResp &&
            (identical(other.isAutocommit, isAutocommit) ||
                other.isAutocommit == isAutocommit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, isAutocommit);
  }

  @override
  String toString() {
    return 'Response.getAutocommit(isAutocommit: $isAutocommit)';
  }
}

/// @nodoc
abstract mixin class $GetAutocommitRespCopyWith<$Res>
    implements $ResponseCopyWith<$Res> {
  factory $GetAutocommitRespCopyWith(
          GetAutocommitResp value, $Res Function(GetAutocommitResp) _then) =
      _$GetAutocommitRespCopyWithImpl;
  @useResult
  $Res call({bool isAutocommit});
}

/// @nodoc
class _$GetAutocommitRespCopyWithImpl<$Res>
    implements $GetAutocommitRespCopyWith<$Res> {
  _$GetAutocommitRespCopyWithImpl(this._self, this._then);

  final GetAutocommitResp _self;
  final $Res Function(GetAutocommitResp) _then;

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isAutocommit = null,
  }) {
    return _then(GetAutocommitResp(
      isAutocommit: null == isAutocommit
          ? _self.isAutocommit
          : isAutocommit // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
mixin _$PipelineReq {
  String? get baton;
  List<StreamRequest> get requests;

  /// Create a copy of PipelineReq
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PipelineReqCopyWith<PipelineReq> get copyWith =>
      _$PipelineReqCopyWithImpl<PipelineReq>(this as PipelineReq, _$identity);

  /// Serializes this PipelineReq to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as PipelineReq;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PipelineReq &&
            (identical(other.baton, _this.baton) ||
                other.baton == _this.baton) &&
            const DeepCollectionEquality()
                .equals(other.requests, _this.requests));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as PipelineReq;
    return Object.hash(runtimeType, _this.baton,
        const DeepCollectionEquality().hash(_this.requests));
  }

  @override
  String toString() {
    final _this = this as PipelineReq;
    return 'PipelineReq(baton: ${_this.baton}, requests: ${_this.requests})';
  }
}

/// @nodoc
abstract mixin class $PipelineReqCopyWith<$Res> {
  factory $PipelineReqCopyWith(
          PipelineReq value, $Res Function(PipelineReq) _then) =
      _$PipelineReqCopyWithImpl;
  @useResult
  $Res call({String? baton, List<StreamRequest> requests});
}

/// @nodoc
class _$PipelineReqCopyWithImpl<$Res> implements $PipelineReqCopyWith<$Res> {
  _$PipelineReqCopyWithImpl(this._self, this._then);

  final PipelineReq _self;
  final $Res Function(PipelineReq) _then;

  /// Create a copy of PipelineReq
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baton = freezed,
    Object? requests = null,
  }) {
    return _then(PipelineReq(
      baton: freezed == baton
          ? _self.baton
          : baton // ignore: cast_nullable_to_non_nullable
              as String?,
      requests: null == requests
          ? _self.requests
          : requests // ignore: cast_nullable_to_non_nullable
              as List<StreamRequest>,
    ));
  }
}

/// Adds pattern-matching-related methods to [PipelineReq].
extension PipelineReqPatterns on PipelineReq {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PipelineReq value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PipelineReq() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PipelineReq value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PipelineReq():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PipelineReq value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PipelineReq() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? baton, List<StreamRequest> requests)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PipelineReq() when $default != null:
        return $default(_that.baton, _that.requests);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? baton, List<StreamRequest> requests) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PipelineReq():
        return $default(_that.baton, _that.requests);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? baton, List<StreamRequest> requests)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PipelineReq() when $default != null:
        return $default(_that.baton, _that.requests);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PipelineReq extends PipelineReq {
  const _PipelineReq({this.baton, required List<StreamRequest> requests})
      : _requests = requests,
        super._();
  factory _PipelineReq.fromJson(Map<String, dynamic> json) =>
      _$PipelineReqFromJson(json);

  @override
  final String? baton;
  final List<StreamRequest> _requests;
  @override
  List<StreamRequest> get requests {
    if (_requests is EqualUnmodifiableListView) return _requests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_requests);
  }

  /// Create a copy of PipelineReq
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PipelineReqCopyWith<_PipelineReq> get copyWith =>
      __$PipelineReqCopyWithImpl<_PipelineReq>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PipelineReqToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PipelineReq &&
            (identical(other.baton, baton) || other.baton == baton) &&
            const DeepCollectionEquality().equals(other.requests, _requests));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(
        runtimeType, baton, const DeepCollectionEquality().hash(_requests));
  }

  @override
  String toString() {
    return 'PipelineReq(baton: $baton, requests: $requests)';
  }
}

/// @nodoc
abstract mixin class _$PipelineReqCopyWith<$Res>
    implements $PipelineReqCopyWith<$Res> {
  factory _$PipelineReqCopyWith(
          _PipelineReq value, $Res Function(_PipelineReq) _then) =
      __$PipelineReqCopyWithImpl;
  @override
  @useResult
  $Res call({String? baton, List<StreamRequest> requests});
}

/// @nodoc
class __$PipelineReqCopyWithImpl<$Res> implements _$PipelineReqCopyWith<$Res> {
  __$PipelineReqCopyWithImpl(this._self, this._then);

  final _PipelineReq _self;
  final $Res Function(_PipelineReq) _then;

  /// Create a copy of PipelineReq
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? baton = freezed,
    Object? requests = null,
  }) {
    return _then(_PipelineReq(
      baton: freezed == baton
          ? _self.baton
          : baton // ignore: cast_nullable_to_non_nullable
              as String?,
      requests: null == requests
          ? _self._requests
          : requests // ignore: cast_nullable_to_non_nullable
              as List<StreamRequest>,
    ));
  }
}

StreamRequest _$StreamRequestFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'close':
      return CloseStreamStreamReq.fromJson(json);
    case 'execute':
      return ExecuteStreamReq.fromJson(json);
    case 'batch':
      return BatchStreamReq.fromJson(json);
    case 'sequence':
      return SequenceStreamReq.fromJson(json);
    case 'describe':
      return DescribeStreamReq.fromJson(json);
    case 'store_sql':
      return StoreSqlStreamReq.fromJson(json);
    case 'close_sql':
      return CloseSqlStreamReq.fromJson(json);
    case 'get_autocommit':
      return GetAutocommitStreamReq.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'StreamRequest',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$StreamRequest {
  /// Serializes this StreamRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is StreamRequest);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'StreamRequest()';
  }
}

/// @nodoc
class $StreamRequestCopyWith<$Res> {
  $StreamRequestCopyWith(StreamRequest _, $Res Function(StreamRequest) __);
}

/// Adds pattern-matching-related methods to [StreamRequest].
extension StreamRequestPatterns on StreamRequest {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CloseStreamStreamReq value)? close,
    TResult Function(ExecuteStreamReq value)? execute,
    TResult Function(BatchStreamReq value)? batch,
    TResult Function(SequenceStreamReq value)? sequence,
    TResult Function(DescribeStreamReq value)? describe,
    TResult Function(StoreSqlStreamReq value)? storeSql,
    TResult Function(CloseSqlStreamReq value)? closeSql,
    TResult Function(GetAutocommitStreamReq value)? getAutocommit,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case CloseStreamStreamReq() when close != null:
        return close(_that);
      case ExecuteStreamReq() when execute != null:
        return execute(_that);
      case BatchStreamReq() when batch != null:
        return batch(_that);
      case SequenceStreamReq() when sequence != null:
        return sequence(_that);
      case DescribeStreamReq() when describe != null:
        return describe(_that);
      case StoreSqlStreamReq() when storeSql != null:
        return storeSql(_that);
      case CloseSqlStreamReq() when closeSql != null:
        return closeSql(_that);
      case GetAutocommitStreamReq() when getAutocommit != null:
        return getAutocommit(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CloseStreamStreamReq value) close,
    required TResult Function(ExecuteStreamReq value) execute,
    required TResult Function(BatchStreamReq value) batch,
    required TResult Function(SequenceStreamReq value) sequence,
    required TResult Function(DescribeStreamReq value) describe,
    required TResult Function(StoreSqlStreamReq value) storeSql,
    required TResult Function(CloseSqlStreamReq value) closeSql,
    required TResult Function(GetAutocommitStreamReq value) getAutocommit,
  }) {
    final _that = this;
    switch (_that) {
      case CloseStreamStreamReq():
        return close(_that);
      case ExecuteStreamReq():
        return execute(_that);
      case BatchStreamReq():
        return batch(_that);
      case SequenceStreamReq():
        return sequence(_that);
      case DescribeStreamReq():
        return describe(_that);
      case StoreSqlStreamReq():
        return storeSql(_that);
      case CloseSqlStreamReq():
        return closeSql(_that);
      case GetAutocommitStreamReq():
        return getAutocommit(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CloseStreamStreamReq value)? close,
    TResult? Function(ExecuteStreamReq value)? execute,
    TResult? Function(BatchStreamReq value)? batch,
    TResult? Function(SequenceStreamReq value)? sequence,
    TResult? Function(DescribeStreamReq value)? describe,
    TResult? Function(StoreSqlStreamReq value)? storeSql,
    TResult? Function(CloseSqlStreamReq value)? closeSql,
    TResult? Function(GetAutocommitStreamReq value)? getAutocommit,
  }) {
    final _that = this;
    switch (_that) {
      case CloseStreamStreamReq() when close != null:
        return close(_that);
      case ExecuteStreamReq() when execute != null:
        return execute(_that);
      case BatchStreamReq() when batch != null:
        return batch(_that);
      case SequenceStreamReq() when sequence != null:
        return sequence(_that);
      case DescribeStreamReq() when describe != null:
        return describe(_that);
      case StoreSqlStreamReq() when storeSql != null:
        return storeSql(_that);
      case CloseSqlStreamReq() when closeSql != null:
        return closeSql(_that);
      case GetAutocommitStreamReq() when getAutocommit != null:
        return getAutocommit(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? streamId)? close,
    TResult Function(Stmt stmt)? execute,
    TResult Function(Batch batch)? batch,
    TResult Function(String? sql, int? sqlId)? sequence,
    TResult Function(String? sql, int? sqlId)? describe,
    TResult Function(int sqlId, String sql)? storeSql,
    TResult Function(int sqlId)? closeSql,
    TResult Function(int streamId)? getAutocommit,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case CloseStreamStreamReq() when close != null:
        return close(_that.streamId);
      case ExecuteStreamReq() when execute != null:
        return execute(_that.stmt);
      case BatchStreamReq() when batch != null:
        return batch(_that.batch);
      case SequenceStreamReq() when sequence != null:
        return sequence(_that.sql, _that.sqlId);
      case DescribeStreamReq() when describe != null:
        return describe(_that.sql, _that.sqlId);
      case StoreSqlStreamReq() when storeSql != null:
        return storeSql(_that.sqlId, _that.sql);
      case CloseSqlStreamReq() when closeSql != null:
        return closeSql(_that.sqlId);
      case GetAutocommitStreamReq() when getAutocommit != null:
        return getAutocommit(_that.streamId);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? streamId) close,
    required TResult Function(Stmt stmt) execute,
    required TResult Function(Batch batch) batch,
    required TResult Function(String? sql, int? sqlId) sequence,
    required TResult Function(String? sql, int? sqlId) describe,
    required TResult Function(int sqlId, String sql) storeSql,
    required TResult Function(int sqlId) closeSql,
    required TResult Function(int streamId) getAutocommit,
  }) {
    final _that = this;
    switch (_that) {
      case CloseStreamStreamReq():
        return close(_that.streamId);
      case ExecuteStreamReq():
        return execute(_that.stmt);
      case BatchStreamReq():
        return batch(_that.batch);
      case SequenceStreamReq():
        return sequence(_that.sql, _that.sqlId);
      case DescribeStreamReq():
        return describe(_that.sql, _that.sqlId);
      case StoreSqlStreamReq():
        return storeSql(_that.sqlId, _that.sql);
      case CloseSqlStreamReq():
        return closeSql(_that.sqlId);
      case GetAutocommitStreamReq():
        return getAutocommit(_that.streamId);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? streamId)? close,
    TResult? Function(Stmt stmt)? execute,
    TResult? Function(Batch batch)? batch,
    TResult? Function(String? sql, int? sqlId)? sequence,
    TResult? Function(String? sql, int? sqlId)? describe,
    TResult? Function(int sqlId, String sql)? storeSql,
    TResult? Function(int sqlId)? closeSql,
    TResult? Function(int streamId)? getAutocommit,
  }) {
    final _that = this;
    switch (_that) {
      case CloseStreamStreamReq() when close != null:
        return close(_that.streamId);
      case ExecuteStreamReq() when execute != null:
        return execute(_that.stmt);
      case BatchStreamReq() when batch != null:
        return batch(_that.batch);
      case SequenceStreamReq() when sequence != null:
        return sequence(_that.sql, _that.sqlId);
      case DescribeStreamReq() when describe != null:
        return describe(_that.sql, _that.sqlId);
      case StoreSqlStreamReq() when storeSql != null:
        return storeSql(_that.sqlId, _that.sql);
      case CloseSqlStreamReq() when closeSql != null:
        return closeSql(_that.sqlId);
      case GetAutocommitStreamReq() when getAutocommit != null:
        return getAutocommit(_that.streamId);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class CloseStreamStreamReq extends StreamRequest {
  const CloseStreamStreamReq({this.streamId, String? $type})
      : $type = $type ?? 'close',
        super._();
  factory CloseStreamStreamReq.fromJson(Map<String, dynamic> json) =>
      _$CloseStreamStreamReqFromJson(json);

  final int? streamId;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of StreamRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CloseStreamStreamReqCopyWith<CloseStreamStreamReq> get copyWith =>
      _$CloseStreamStreamReqCopyWithImpl<CloseStreamStreamReq>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CloseStreamStreamReqToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CloseStreamStreamReq &&
            (identical(other.streamId, streamId) ||
                other.streamId == streamId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, streamId);
  }

  @override
  String toString() {
    return 'StreamRequest.close(streamId: $streamId)';
  }
}

/// @nodoc
abstract mixin class $CloseStreamStreamReqCopyWith<$Res>
    implements $StreamRequestCopyWith<$Res> {
  factory $CloseStreamStreamReqCopyWith(CloseStreamStreamReq value,
          $Res Function(CloseStreamStreamReq) _then) =
      _$CloseStreamStreamReqCopyWithImpl;
  @useResult
  $Res call({int? streamId});
}

/// @nodoc
class _$CloseStreamStreamReqCopyWithImpl<$Res>
    implements $CloseStreamStreamReqCopyWith<$Res> {
  _$CloseStreamStreamReqCopyWithImpl(this._self, this._then);

  final CloseStreamStreamReq _self;
  final $Res Function(CloseStreamStreamReq) _then;

  /// Create a copy of StreamRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? streamId = freezed,
  }) {
    return _then(CloseStreamStreamReq(
      streamId: freezed == streamId
          ? _self.streamId
          : streamId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class ExecuteStreamReq extends StreamRequest {
  const ExecuteStreamReq({required this.stmt, String? $type})
      : $type = $type ?? 'execute',
        super._();
  factory ExecuteStreamReq.fromJson(Map<String, dynamic> json) =>
      _$ExecuteStreamReqFromJson(json);

  final Stmt stmt;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of StreamRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ExecuteStreamReqCopyWith<ExecuteStreamReq> get copyWith =>
      _$ExecuteStreamReqCopyWithImpl<ExecuteStreamReq>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ExecuteStreamReqToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ExecuteStreamReq &&
            (identical(other.stmt, stmt) || other.stmt == stmt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, stmt);
  }

  @override
  String toString() {
    return 'StreamRequest.execute(stmt: $stmt)';
  }
}

/// @nodoc
abstract mixin class $ExecuteStreamReqCopyWith<$Res>
    implements $StreamRequestCopyWith<$Res> {
  factory $ExecuteStreamReqCopyWith(
          ExecuteStreamReq value, $Res Function(ExecuteStreamReq) _then) =
      _$ExecuteStreamReqCopyWithImpl;
  @useResult
  $Res call({Stmt stmt});

  $StmtCopyWith<$Res> get stmt;
}

/// @nodoc
class _$ExecuteStreamReqCopyWithImpl<$Res>
    implements $ExecuteStreamReqCopyWith<$Res> {
  _$ExecuteStreamReqCopyWithImpl(this._self, this._then);

  final ExecuteStreamReq _self;
  final $Res Function(ExecuteStreamReq) _then;

  /// Create a copy of StreamRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? stmt = null,
  }) {
    return _then(ExecuteStreamReq(
      stmt: null == stmt
          ? _self.stmt
          : stmt // ignore: cast_nullable_to_non_nullable
              as Stmt,
    ));
  }

  /// Create a copy of StreamRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StmtCopyWith<$Res> get stmt {
    return $StmtCopyWith<$Res>(_self.stmt, (value) {
      return _then(_self.copyWith(stmt: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class BatchStreamReq extends StreamRequest {
  const BatchStreamReq({required this.batch, String? $type})
      : $type = $type ?? 'batch',
        super._();
  factory BatchStreamReq.fromJson(Map<String, dynamic> json) =>
      _$BatchStreamReqFromJson(json);

  final Batch batch;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of StreamRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BatchStreamReqCopyWith<BatchStreamReq> get copyWith =>
      _$BatchStreamReqCopyWithImpl<BatchStreamReq>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BatchStreamReqToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BatchStreamReq &&
            (identical(other.batch, batch) || other.batch == batch));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, batch);
  }

  @override
  String toString() {
    return 'StreamRequest.batch(batch: $batch)';
  }
}

/// @nodoc
abstract mixin class $BatchStreamReqCopyWith<$Res>
    implements $StreamRequestCopyWith<$Res> {
  factory $BatchStreamReqCopyWith(
          BatchStreamReq value, $Res Function(BatchStreamReq) _then) =
      _$BatchStreamReqCopyWithImpl;
  @useResult
  $Res call({Batch batch});

  $BatchCopyWith<$Res> get batch;
}

/// @nodoc
class _$BatchStreamReqCopyWithImpl<$Res>
    implements $BatchStreamReqCopyWith<$Res> {
  _$BatchStreamReqCopyWithImpl(this._self, this._then);

  final BatchStreamReq _self;
  final $Res Function(BatchStreamReq) _then;

  /// Create a copy of StreamRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? batch = null,
  }) {
    return _then(BatchStreamReq(
      batch: null == batch
          ? _self.batch
          : batch // ignore: cast_nullable_to_non_nullable
              as Batch,
    ));
  }

  /// Create a copy of StreamRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BatchCopyWith<$Res> get batch {
    return $BatchCopyWith<$Res>(_self.batch, (value) {
      return _then(_self.copyWith(batch: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class SequenceStreamReq extends StreamRequest {
  const SequenceStreamReq({this.sql, this.sqlId, String? $type})
      : $type = $type ?? 'sequence',
        super._();
  factory SequenceStreamReq.fromJson(Map<String, dynamic> json) =>
      _$SequenceStreamReqFromJson(json);

  final String? sql;
  final int? sqlId;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of StreamRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SequenceStreamReqCopyWith<SequenceStreamReq> get copyWith =>
      _$SequenceStreamReqCopyWithImpl<SequenceStreamReq>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SequenceStreamReqToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SequenceStreamReq &&
            (identical(other.sql, sql) || other.sql == sql) &&
            (identical(other.sqlId, sqlId) || other.sqlId == sqlId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, sql, sqlId);
  }

  @override
  String toString() {
    return 'StreamRequest.sequence(sql: $sql, sqlId: $sqlId)';
  }
}

/// @nodoc
abstract mixin class $SequenceStreamReqCopyWith<$Res>
    implements $StreamRequestCopyWith<$Res> {
  factory $SequenceStreamReqCopyWith(
          SequenceStreamReq value, $Res Function(SequenceStreamReq) _then) =
      _$SequenceStreamReqCopyWithImpl;
  @useResult
  $Res call({String? sql, int? sqlId});
}

/// @nodoc
class _$SequenceStreamReqCopyWithImpl<$Res>
    implements $SequenceStreamReqCopyWith<$Res> {
  _$SequenceStreamReqCopyWithImpl(this._self, this._then);

  final SequenceStreamReq _self;
  final $Res Function(SequenceStreamReq) _then;

  /// Create a copy of StreamRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? sql = freezed,
    Object? sqlId = freezed,
  }) {
    return _then(SequenceStreamReq(
      sql: freezed == sql
          ? _self.sql
          : sql // ignore: cast_nullable_to_non_nullable
              as String?,
      sqlId: freezed == sqlId
          ? _self.sqlId
          : sqlId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class DescribeStreamReq extends StreamRequest {
  const DescribeStreamReq({this.sql, this.sqlId, String? $type})
      : $type = $type ?? 'describe',
        super._();
  factory DescribeStreamReq.fromJson(Map<String, dynamic> json) =>
      _$DescribeStreamReqFromJson(json);

  final String? sql;
  final int? sqlId;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of StreamRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DescribeStreamReqCopyWith<DescribeStreamReq> get copyWith =>
      _$DescribeStreamReqCopyWithImpl<DescribeStreamReq>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DescribeStreamReqToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DescribeStreamReq &&
            (identical(other.sql, sql) || other.sql == sql) &&
            (identical(other.sqlId, sqlId) || other.sqlId == sqlId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, sql, sqlId);
  }

  @override
  String toString() {
    return 'StreamRequest.describe(sql: $sql, sqlId: $sqlId)';
  }
}

/// @nodoc
abstract mixin class $DescribeStreamReqCopyWith<$Res>
    implements $StreamRequestCopyWith<$Res> {
  factory $DescribeStreamReqCopyWith(
          DescribeStreamReq value, $Res Function(DescribeStreamReq) _then) =
      _$DescribeStreamReqCopyWithImpl;
  @useResult
  $Res call({String? sql, int? sqlId});
}

/// @nodoc
class _$DescribeStreamReqCopyWithImpl<$Res>
    implements $DescribeStreamReqCopyWith<$Res> {
  _$DescribeStreamReqCopyWithImpl(this._self, this._then);

  final DescribeStreamReq _self;
  final $Res Function(DescribeStreamReq) _then;

  /// Create a copy of StreamRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? sql = freezed,
    Object? sqlId = freezed,
  }) {
    return _then(DescribeStreamReq(
      sql: freezed == sql
          ? _self.sql
          : sql // ignore: cast_nullable_to_non_nullable
              as String?,
      sqlId: freezed == sqlId
          ? _self.sqlId
          : sqlId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class StoreSqlStreamReq extends StreamRequest {
  const StoreSqlStreamReq(
      {required this.sqlId, required this.sql, String? $type})
      : $type = $type ?? 'store_sql',
        super._();
  factory StoreSqlStreamReq.fromJson(Map<String, dynamic> json) =>
      _$StoreSqlStreamReqFromJson(json);

  final int sqlId;
  final String sql;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of StreamRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StoreSqlStreamReqCopyWith<StoreSqlStreamReq> get copyWith =>
      _$StoreSqlStreamReqCopyWithImpl<StoreSqlStreamReq>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StoreSqlStreamReqToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StoreSqlStreamReq &&
            (identical(other.sqlId, sqlId) || other.sqlId == sqlId) &&
            (identical(other.sql, sql) || other.sql == sql));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, sqlId, sql);
  }

  @override
  String toString() {
    return 'StreamRequest.storeSql(sqlId: $sqlId, sql: $sql)';
  }
}

/// @nodoc
abstract mixin class $StoreSqlStreamReqCopyWith<$Res>
    implements $StreamRequestCopyWith<$Res> {
  factory $StoreSqlStreamReqCopyWith(
          StoreSqlStreamReq value, $Res Function(StoreSqlStreamReq) _then) =
      _$StoreSqlStreamReqCopyWithImpl;
  @useResult
  $Res call({int sqlId, String sql});
}

/// @nodoc
class _$StoreSqlStreamReqCopyWithImpl<$Res>
    implements $StoreSqlStreamReqCopyWith<$Res> {
  _$StoreSqlStreamReqCopyWithImpl(this._self, this._then);

  final StoreSqlStreamReq _self;
  final $Res Function(StoreSqlStreamReq) _then;

  /// Create a copy of StreamRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? sqlId = null,
    Object? sql = null,
  }) {
    return _then(StoreSqlStreamReq(
      sqlId: null == sqlId
          ? _self.sqlId
          : sqlId // ignore: cast_nullable_to_non_nullable
              as int,
      sql: null == sql
          ? _self.sql
          : sql // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class CloseSqlStreamReq extends StreamRequest {
  const CloseSqlStreamReq({required this.sqlId, String? $type})
      : $type = $type ?? 'close_sql',
        super._();
  factory CloseSqlStreamReq.fromJson(Map<String, dynamic> json) =>
      _$CloseSqlStreamReqFromJson(json);

  final int sqlId;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of StreamRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CloseSqlStreamReqCopyWith<CloseSqlStreamReq> get copyWith =>
      _$CloseSqlStreamReqCopyWithImpl<CloseSqlStreamReq>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CloseSqlStreamReqToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CloseSqlStreamReq &&
            (identical(other.sqlId, sqlId) || other.sqlId == sqlId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, sqlId);
  }

  @override
  String toString() {
    return 'StreamRequest.closeSql(sqlId: $sqlId)';
  }
}

/// @nodoc
abstract mixin class $CloseSqlStreamReqCopyWith<$Res>
    implements $StreamRequestCopyWith<$Res> {
  factory $CloseSqlStreamReqCopyWith(
          CloseSqlStreamReq value, $Res Function(CloseSqlStreamReq) _then) =
      _$CloseSqlStreamReqCopyWithImpl;
  @useResult
  $Res call({int sqlId});
}

/// @nodoc
class _$CloseSqlStreamReqCopyWithImpl<$Res>
    implements $CloseSqlStreamReqCopyWith<$Res> {
  _$CloseSqlStreamReqCopyWithImpl(this._self, this._then);

  final CloseSqlStreamReq _self;
  final $Res Function(CloseSqlStreamReq) _then;

  /// Create a copy of StreamRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? sqlId = null,
  }) {
    return _then(CloseSqlStreamReq(
      sqlId: null == sqlId
          ? _self.sqlId
          : sqlId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class GetAutocommitStreamReq extends StreamRequest {
  const GetAutocommitStreamReq({required this.streamId, String? $type})
      : $type = $type ?? 'get_autocommit',
        super._();
  factory GetAutocommitStreamReq.fromJson(Map<String, dynamic> json) =>
      _$GetAutocommitStreamReqFromJson(json);

  final int streamId;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of StreamRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetAutocommitStreamReqCopyWith<GetAutocommitStreamReq> get copyWith =>
      _$GetAutocommitStreamReqCopyWithImpl<GetAutocommitStreamReq>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GetAutocommitStreamReqToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetAutocommitStreamReq &&
            (identical(other.streamId, streamId) ||
                other.streamId == streamId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, streamId);
  }

  @override
  String toString() {
    return 'StreamRequest.getAutocommit(streamId: $streamId)';
  }
}

/// @nodoc
abstract mixin class $GetAutocommitStreamReqCopyWith<$Res>
    implements $StreamRequestCopyWith<$Res> {
  factory $GetAutocommitStreamReqCopyWith(GetAutocommitStreamReq value,
          $Res Function(GetAutocommitStreamReq) _then) =
      _$GetAutocommitStreamReqCopyWithImpl;
  @useResult
  $Res call({int streamId});
}

/// @nodoc
class _$GetAutocommitStreamReqCopyWithImpl<$Res>
    implements $GetAutocommitStreamReqCopyWith<$Res> {
  _$GetAutocommitStreamReqCopyWithImpl(this._self, this._then);

  final GetAutocommitStreamReq _self;
  final $Res Function(GetAutocommitStreamReq) _then;

  /// Create a copy of StreamRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? streamId = null,
  }) {
    return _then(GetAutocommitStreamReq(
      streamId: null == streamId
          ? _self.streamId
          : streamId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$PipelineResp {
  String? get baton;
  String? get baseUrl;
  List<StreamResult> get results;

  /// Create a copy of PipelineResp
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PipelineRespCopyWith<PipelineResp> get copyWith =>
      _$PipelineRespCopyWithImpl<PipelineResp>(
          this as PipelineResp, _$identity);

  /// Serializes this PipelineResp to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as PipelineResp;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PipelineResp &&
            (identical(other.baton, _this.baton) ||
                other.baton == _this.baton) &&
            (identical(other.baseUrl, _this.baseUrl) ||
                other.baseUrl == _this.baseUrl) &&
            const DeepCollectionEquality()
                .equals(other.results, _this.results));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as PipelineResp;
    return Object.hash(runtimeType, _this.baton, _this.baseUrl,
        const DeepCollectionEquality().hash(_this.results));
  }

  @override
  String toString() {
    final _this = this as PipelineResp;
    return 'PipelineResp(baton: ${_this.baton}, baseUrl: ${_this.baseUrl}, results: ${_this.results})';
  }
}

/// @nodoc
abstract mixin class $PipelineRespCopyWith<$Res> {
  factory $PipelineRespCopyWith(
          PipelineResp value, $Res Function(PipelineResp) _then) =
      _$PipelineRespCopyWithImpl;
  @useResult
  $Res call({String? baton, String? baseUrl, List<StreamResult> results});
}

/// @nodoc
class _$PipelineRespCopyWithImpl<$Res> implements $PipelineRespCopyWith<$Res> {
  _$PipelineRespCopyWithImpl(this._self, this._then);

  final PipelineResp _self;
  final $Res Function(PipelineResp) _then;

  /// Create a copy of PipelineResp
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baton = freezed,
    Object? baseUrl = freezed,
    Object? results = null,
  }) {
    return _then(PipelineResp(
      baton: freezed == baton
          ? _self.baton
          : baton // ignore: cast_nullable_to_non_nullable
              as String?,
      baseUrl: freezed == baseUrl
          ? _self.baseUrl
          : baseUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      results: null == results
          ? _self.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<StreamResult>,
    ));
  }
}

/// Adds pattern-matching-related methods to [PipelineResp].
extension PipelineRespPatterns on PipelineResp {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PipelineResp value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PipelineResp() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PipelineResp value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PipelineResp():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PipelineResp value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PipelineResp() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String? baton, String? baseUrl, List<StreamResult> results)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PipelineResp() when $default != null:
        return $default(_that.baton, _that.baseUrl, _that.results);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? baton, String? baseUrl, List<StreamResult> results)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PipelineResp():
        return $default(_that.baton, _that.baseUrl, _that.results);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String? baton, String? baseUrl, List<StreamResult> results)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PipelineResp() when $default != null:
        return $default(_that.baton, _that.baseUrl, _that.results);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PipelineResp extends PipelineResp {
  const _PipelineResp(
      {this.baton, this.baseUrl, required List<StreamResult> results})
      : _results = results,
        super._();
  factory _PipelineResp.fromJson(Map<String, dynamic> json) =>
      _$PipelineRespFromJson(json);

  @override
  final String? baton;
  @override
  final String? baseUrl;
  final List<StreamResult> _results;
  @override
  List<StreamResult> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  /// Create a copy of PipelineResp
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PipelineRespCopyWith<_PipelineResp> get copyWith =>
      __$PipelineRespCopyWithImpl<_PipelineResp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PipelineRespToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PipelineResp &&
            (identical(other.baton, baton) || other.baton == baton) &&
            (identical(other.baseUrl, baseUrl) || other.baseUrl == baseUrl) &&
            const DeepCollectionEquality().equals(other.results, _results));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, baton, baseUrl,
        const DeepCollectionEquality().hash(_results));
  }

  @override
  String toString() {
    return 'PipelineResp(baton: $baton, baseUrl: $baseUrl, results: $results)';
  }
}

/// @nodoc
abstract mixin class _$PipelineRespCopyWith<$Res>
    implements $PipelineRespCopyWith<$Res> {
  factory _$PipelineRespCopyWith(
          _PipelineResp value, $Res Function(_PipelineResp) _then) =
      __$PipelineRespCopyWithImpl;
  @override
  @useResult
  $Res call({String? baton, String? baseUrl, List<StreamResult> results});
}

/// @nodoc
class __$PipelineRespCopyWithImpl<$Res>
    implements _$PipelineRespCopyWith<$Res> {
  __$PipelineRespCopyWithImpl(this._self, this._then);

  final _PipelineResp _self;
  final $Res Function(_PipelineResp) _then;

  /// Create a copy of PipelineResp
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? baton = freezed,
    Object? baseUrl = freezed,
    Object? results = null,
  }) {
    return _then(_PipelineResp(
      baton: freezed == baton
          ? _self.baton
          : baton // ignore: cast_nullable_to_non_nullable
              as String?,
      baseUrl: freezed == baseUrl
          ? _self.baseUrl
          : baseUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      results: null == results
          ? _self._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<StreamResult>,
    ));
  }
}

StreamResult _$StreamResultFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'ok':
      return StreamResultOk.fromJson(json);
    case 'error':
      return StreamResultError.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'StreamResult',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$StreamResult {
  /// Serializes this StreamResult to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is StreamResult);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'StreamResult()';
  }
}

/// @nodoc
class $StreamResultCopyWith<$Res> {
  $StreamResultCopyWith(StreamResult _, $Res Function(StreamResult) __);
}

/// Adds pattern-matching-related methods to [StreamResult].
extension StreamResultPatterns on StreamResult {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StreamResultOk value)? ok,
    TResult Function(StreamResultError value)? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case StreamResultOk() when ok != null:
        return ok(_that);
      case StreamResultError() when error != null:
        return error(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StreamResultOk value) ok,
    required TResult Function(StreamResultError value) error,
  }) {
    final _that = this;
    switch (_that) {
      case StreamResultOk():
        return ok(_that);
      case StreamResultError():
        return error(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StreamResultOk value)? ok,
    TResult? Function(StreamResultError value)? error,
  }) {
    final _that = this;
    switch (_that) {
      case StreamResultOk() when ok != null:
        return ok(_that);
      case StreamResultError() when error != null:
        return error(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StreamResponse response)? ok,
    TResult Function(StreamError error)? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case StreamResultOk() when ok != null:
        return ok(_that.response);
      case StreamResultError() when error != null:
        return error(_that.error);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StreamResponse response) ok,
    required TResult Function(StreamError error) error,
  }) {
    final _that = this;
    switch (_that) {
      case StreamResultOk():
        return ok(_that.response);
      case StreamResultError():
        return error(_that.error);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StreamResponse response)? ok,
    TResult? Function(StreamError error)? error,
  }) {
    final _that = this;
    switch (_that) {
      case StreamResultOk() when ok != null:
        return ok(_that.response);
      case StreamResultError() when error != null:
        return error(_that.error);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class StreamResultOk extends StreamResult {
  const StreamResultOk(this.response, {String? $type})
      : $type = $type ?? 'ok',
        super._();
  factory StreamResultOk.fromJson(Map<String, dynamic> json) =>
      _$StreamResultOkFromJson(json);

  final StreamResponse response;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of StreamResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StreamResultOkCopyWith<StreamResultOk> get copyWith =>
      _$StreamResultOkCopyWithImpl<StreamResultOk>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StreamResultOkToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StreamResultOk &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, response);
  }

  @override
  String toString() {
    return 'StreamResult.ok(response: $response)';
  }
}

/// @nodoc
abstract mixin class $StreamResultOkCopyWith<$Res>
    implements $StreamResultCopyWith<$Res> {
  factory $StreamResultOkCopyWith(
          StreamResultOk value, $Res Function(StreamResultOk) _then) =
      _$StreamResultOkCopyWithImpl;
  @useResult
  $Res call({StreamResponse response});

  $StreamResponseCopyWith<$Res> get response;
}

/// @nodoc
class _$StreamResultOkCopyWithImpl<$Res>
    implements $StreamResultOkCopyWith<$Res> {
  _$StreamResultOkCopyWithImpl(this._self, this._then);

  final StreamResultOk _self;
  final $Res Function(StreamResultOk) _then;

  /// Create a copy of StreamResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? response = null,
  }) {
    return _then(StreamResultOk(
      null == response
          ? _self.response
          : response // ignore: cast_nullable_to_non_nullable
              as StreamResponse,
    ));
  }

  /// Create a copy of StreamResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StreamResponseCopyWith<$Res> get response {
    return $StreamResponseCopyWith<$Res>(_self.response, (value) {
      return _then(_self.copyWith(response: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class StreamResultError extends StreamResult {
  const StreamResultError(this.error, {String? $type})
      : $type = $type ?? 'error',
        super._();
  factory StreamResultError.fromJson(Map<String, dynamic> json) =>
      _$StreamResultErrorFromJson(json);

  final StreamError error;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of StreamResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StreamResultErrorCopyWith<StreamResultError> get copyWith =>
      _$StreamResultErrorCopyWithImpl<StreamResultError>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StreamResultErrorToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StreamResultError &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, error);
  }

  @override
  String toString() {
    return 'StreamResult.error(error: $error)';
  }
}

/// @nodoc
abstract mixin class $StreamResultErrorCopyWith<$Res>
    implements $StreamResultCopyWith<$Res> {
  factory $StreamResultErrorCopyWith(
          StreamResultError value, $Res Function(StreamResultError) _then) =
      _$StreamResultErrorCopyWithImpl;
  @useResult
  $Res call({StreamError error});

  $StreamErrorCopyWith<$Res> get error;
}

/// @nodoc
class _$StreamResultErrorCopyWithImpl<$Res>
    implements $StreamResultErrorCopyWith<$Res> {
  _$StreamResultErrorCopyWithImpl(this._self, this._then);

  final StreamResultError _self;
  final $Res Function(StreamResultError) _then;

  /// Create a copy of StreamResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(StreamResultError(
      null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as StreamError,
    ));
  }

  /// Create a copy of StreamResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StreamErrorCopyWith<$Res> get error {
    return $StreamErrorCopyWith<$Res>(_self.error, (value) {
      return _then(_self.copyWith(error: value));
    });
  }
}

StreamResponse _$StreamResponseFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'opened':
      return OpenStreamStreamResp.fromJson(json);
    case 'close':
      return CloseStreamStreamResp.fromJson(json);
    case 'execute':
      return ExecuteStreamResp.fromJson(json);
    case 'batch':
      return BatchStreamResp.fromJson(json);
    case 'sequence':
      return SequenceStreamResp.fromJson(json);
    case 'describe':
      return DescribeStreamResp.fromJson(json);
    case 'store_sql':
      return StoreSqlStreamResp.fromJson(json);
    case 'close_sql':
      return CloseSqlStreamResp.fromJson(json);
    case 'get_autocommit':
      return GetAutocommitStreamResp.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'StreamResponse',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$StreamResponse {
  /// Serializes this StreamResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is StreamResponse);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'StreamResponse()';
  }
}

/// @nodoc
class $StreamResponseCopyWith<$Res> {
  $StreamResponseCopyWith(StreamResponse _, $Res Function(StreamResponse) __);
}

/// Adds pattern-matching-related methods to [StreamResponse].
extension StreamResponsePatterns on StreamResponse {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OpenStreamStreamResp value)? opened,
    TResult Function(CloseStreamStreamResp value)? close,
    TResult Function(ExecuteStreamResp value)? execute,
    TResult Function(BatchStreamResp value)? batch,
    TResult Function(SequenceStreamResp value)? sequence,
    TResult Function(DescribeStreamResp value)? describe,
    TResult Function(StoreSqlStreamResp value)? storeSql,
    TResult Function(CloseSqlStreamResp value)? closeSql,
    TResult Function(GetAutocommitStreamResp value)? getAutocommit,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case OpenStreamStreamResp() when opened != null:
        return opened(_that);
      case CloseStreamStreamResp() when close != null:
        return close(_that);
      case ExecuteStreamResp() when execute != null:
        return execute(_that);
      case BatchStreamResp() when batch != null:
        return batch(_that);
      case SequenceStreamResp() when sequence != null:
        return sequence(_that);
      case DescribeStreamResp() when describe != null:
        return describe(_that);
      case StoreSqlStreamResp() when storeSql != null:
        return storeSql(_that);
      case CloseSqlStreamResp() when closeSql != null:
        return closeSql(_that);
      case GetAutocommitStreamResp() when getAutocommit != null:
        return getAutocommit(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OpenStreamStreamResp value) opened,
    required TResult Function(CloseStreamStreamResp value) close,
    required TResult Function(ExecuteStreamResp value) execute,
    required TResult Function(BatchStreamResp value) batch,
    required TResult Function(SequenceStreamResp value) sequence,
    required TResult Function(DescribeStreamResp value) describe,
    required TResult Function(StoreSqlStreamResp value) storeSql,
    required TResult Function(CloseSqlStreamResp value) closeSql,
    required TResult Function(GetAutocommitStreamResp value) getAutocommit,
  }) {
    final _that = this;
    switch (_that) {
      case OpenStreamStreamResp():
        return opened(_that);
      case CloseStreamStreamResp():
        return close(_that);
      case ExecuteStreamResp():
        return execute(_that);
      case BatchStreamResp():
        return batch(_that);
      case SequenceStreamResp():
        return sequence(_that);
      case DescribeStreamResp():
        return describe(_that);
      case StoreSqlStreamResp():
        return storeSql(_that);
      case CloseSqlStreamResp():
        return closeSql(_that);
      case GetAutocommitStreamResp():
        return getAutocommit(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OpenStreamStreamResp value)? opened,
    TResult? Function(CloseStreamStreamResp value)? close,
    TResult? Function(ExecuteStreamResp value)? execute,
    TResult? Function(BatchStreamResp value)? batch,
    TResult? Function(SequenceStreamResp value)? sequence,
    TResult? Function(DescribeStreamResp value)? describe,
    TResult? Function(StoreSqlStreamResp value)? storeSql,
    TResult? Function(CloseSqlStreamResp value)? closeSql,
    TResult? Function(GetAutocommitStreamResp value)? getAutocommit,
  }) {
    final _that = this;
    switch (_that) {
      case OpenStreamStreamResp() when opened != null:
        return opened(_that);
      case CloseStreamStreamResp() when close != null:
        return close(_that);
      case ExecuteStreamResp() when execute != null:
        return execute(_that);
      case BatchStreamResp() when batch != null:
        return batch(_that);
      case SequenceStreamResp() when sequence != null:
        return sequence(_that);
      case DescribeStreamResp() when describe != null:
        return describe(_that);
      case StoreSqlStreamResp() when storeSql != null:
        return storeSql(_that);
      case CloseSqlStreamResp() when closeSql != null:
        return closeSql(_that);
      case GetAutocommitStreamResp() when getAutocommit != null:
        return getAutocommit(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? opened,
    TResult Function()? close,
    TResult Function(StmtResult result)? execute,
    TResult Function(BatchResult result)? batch,
    TResult Function()? sequence,
    TResult Function(DescribeResult result)? describe,
    TResult Function()? storeSql,
    TResult Function()? closeSql,
    TResult Function(bool isAutocommit)? getAutocommit,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case OpenStreamStreamResp() when opened != null:
        return opened();
      case CloseStreamStreamResp() when close != null:
        return close();
      case ExecuteStreamResp() when execute != null:
        return execute(_that.result);
      case BatchStreamResp() when batch != null:
        return batch(_that.result);
      case SequenceStreamResp() when sequence != null:
        return sequence();
      case DescribeStreamResp() when describe != null:
        return describe(_that.result);
      case StoreSqlStreamResp() when storeSql != null:
        return storeSql();
      case CloseSqlStreamResp() when closeSql != null:
        return closeSql();
      case GetAutocommitStreamResp() when getAutocommit != null:
        return getAutocommit(_that.isAutocommit);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() opened,
    required TResult Function() close,
    required TResult Function(StmtResult result) execute,
    required TResult Function(BatchResult result) batch,
    required TResult Function() sequence,
    required TResult Function(DescribeResult result) describe,
    required TResult Function() storeSql,
    required TResult Function() closeSql,
    required TResult Function(bool isAutocommit) getAutocommit,
  }) {
    final _that = this;
    switch (_that) {
      case OpenStreamStreamResp():
        return opened();
      case CloseStreamStreamResp():
        return close();
      case ExecuteStreamResp():
        return execute(_that.result);
      case BatchStreamResp():
        return batch(_that.result);
      case SequenceStreamResp():
        return sequence();
      case DescribeStreamResp():
        return describe(_that.result);
      case StoreSqlStreamResp():
        return storeSql();
      case CloseSqlStreamResp():
        return closeSql();
      case GetAutocommitStreamResp():
        return getAutocommit(_that.isAutocommit);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? opened,
    TResult? Function()? close,
    TResult? Function(StmtResult result)? execute,
    TResult? Function(BatchResult result)? batch,
    TResult? Function()? sequence,
    TResult? Function(DescribeResult result)? describe,
    TResult? Function()? storeSql,
    TResult? Function()? closeSql,
    TResult? Function(bool isAutocommit)? getAutocommit,
  }) {
    final _that = this;
    switch (_that) {
      case OpenStreamStreamResp() when opened != null:
        return opened();
      case CloseStreamStreamResp() when close != null:
        return close();
      case ExecuteStreamResp() when execute != null:
        return execute(_that.result);
      case BatchStreamResp() when batch != null:
        return batch(_that.result);
      case SequenceStreamResp() when sequence != null:
        return sequence();
      case DescribeStreamResp() when describe != null:
        return describe(_that.result);
      case StoreSqlStreamResp() when storeSql != null:
        return storeSql();
      case CloseSqlStreamResp() when closeSql != null:
        return closeSql();
      case GetAutocommitStreamResp() when getAutocommit != null:
        return getAutocommit(_that.isAutocommit);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class OpenStreamStreamResp extends StreamResponse {
  const OpenStreamStreamResp({String? $type})
      : $type = $type ?? 'opened',
        super._();
  factory OpenStreamStreamResp.fromJson(Map<String, dynamic> json) =>
      _$OpenStreamStreamRespFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$OpenStreamStreamRespToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is OpenStreamStreamResp);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'StreamResponse.opened()';
  }
}

/// @nodoc
@JsonSerializable()
class CloseStreamStreamResp extends StreamResponse {
  const CloseStreamStreamResp({String? $type})
      : $type = $type ?? 'close',
        super._();
  factory CloseStreamStreamResp.fromJson(Map<String, dynamic> json) =>
      _$CloseStreamStreamRespFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$CloseStreamStreamRespToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CloseStreamStreamResp);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'StreamResponse.close()';
  }
}

/// @nodoc
@JsonSerializable()
class ExecuteStreamResp extends StreamResponse {
  const ExecuteStreamResp({required this.result, String? $type})
      : $type = $type ?? 'execute',
        super._();
  factory ExecuteStreamResp.fromJson(Map<String, dynamic> json) =>
      _$ExecuteStreamRespFromJson(json);

  final StmtResult result;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of StreamResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ExecuteStreamRespCopyWith<ExecuteStreamResp> get copyWith =>
      _$ExecuteStreamRespCopyWithImpl<ExecuteStreamResp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ExecuteStreamRespToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ExecuteStreamResp &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, result);
  }

  @override
  String toString() {
    return 'StreamResponse.execute(result: $result)';
  }
}

/// @nodoc
abstract mixin class $ExecuteStreamRespCopyWith<$Res>
    implements $StreamResponseCopyWith<$Res> {
  factory $ExecuteStreamRespCopyWith(
          ExecuteStreamResp value, $Res Function(ExecuteStreamResp) _then) =
      _$ExecuteStreamRespCopyWithImpl;
  @useResult
  $Res call({StmtResult result});

  $StmtResultCopyWith<$Res> get result;
}

/// @nodoc
class _$ExecuteStreamRespCopyWithImpl<$Res>
    implements $ExecuteStreamRespCopyWith<$Res> {
  _$ExecuteStreamRespCopyWithImpl(this._self, this._then);

  final ExecuteStreamResp _self;
  final $Res Function(ExecuteStreamResp) _then;

  /// Create a copy of StreamResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? result = null,
  }) {
    return _then(ExecuteStreamResp(
      result: null == result
          ? _self.result
          : result // ignore: cast_nullable_to_non_nullable
              as StmtResult,
    ));
  }

  /// Create a copy of StreamResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StmtResultCopyWith<$Res> get result {
    return $StmtResultCopyWith<$Res>(_self.result, (value) {
      return _then(_self.copyWith(result: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class BatchStreamResp extends StreamResponse {
  const BatchStreamResp({required this.result, String? $type})
      : $type = $type ?? 'batch',
        super._();
  factory BatchStreamResp.fromJson(Map<String, dynamic> json) =>
      _$BatchStreamRespFromJson(json);

  final BatchResult result;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of StreamResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BatchStreamRespCopyWith<BatchStreamResp> get copyWith =>
      _$BatchStreamRespCopyWithImpl<BatchStreamResp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BatchStreamRespToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BatchStreamResp &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, result);
  }

  @override
  String toString() {
    return 'StreamResponse.batch(result: $result)';
  }
}

/// @nodoc
abstract mixin class $BatchStreamRespCopyWith<$Res>
    implements $StreamResponseCopyWith<$Res> {
  factory $BatchStreamRespCopyWith(
          BatchStreamResp value, $Res Function(BatchStreamResp) _then) =
      _$BatchStreamRespCopyWithImpl;
  @useResult
  $Res call({BatchResult result});

  $BatchResultCopyWith<$Res> get result;
}

/// @nodoc
class _$BatchStreamRespCopyWithImpl<$Res>
    implements $BatchStreamRespCopyWith<$Res> {
  _$BatchStreamRespCopyWithImpl(this._self, this._then);

  final BatchStreamResp _self;
  final $Res Function(BatchStreamResp) _then;

  /// Create a copy of StreamResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? result = null,
  }) {
    return _then(BatchStreamResp(
      result: null == result
          ? _self.result
          : result // ignore: cast_nullable_to_non_nullable
              as BatchResult,
    ));
  }

  /// Create a copy of StreamResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BatchResultCopyWith<$Res> get result {
    return $BatchResultCopyWith<$Res>(_self.result, (value) {
      return _then(_self.copyWith(result: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class SequenceStreamResp extends StreamResponse {
  const SequenceStreamResp({String? $type})
      : $type = $type ?? 'sequence',
        super._();
  factory SequenceStreamResp.fromJson(Map<String, dynamic> json) =>
      _$SequenceStreamRespFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$SequenceStreamRespToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SequenceStreamResp);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'StreamResponse.sequence()';
  }
}

/// @nodoc
@JsonSerializable()
class DescribeStreamResp extends StreamResponse {
  const DescribeStreamResp({required this.result, String? $type})
      : $type = $type ?? 'describe',
        super._();
  factory DescribeStreamResp.fromJson(Map<String, dynamic> json) =>
      _$DescribeStreamRespFromJson(json);

  final DescribeResult result;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of StreamResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DescribeStreamRespCopyWith<DescribeStreamResp> get copyWith =>
      _$DescribeStreamRespCopyWithImpl<DescribeStreamResp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DescribeStreamRespToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DescribeStreamResp &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, result);
  }

  @override
  String toString() {
    return 'StreamResponse.describe(result: $result)';
  }
}

/// @nodoc
abstract mixin class $DescribeStreamRespCopyWith<$Res>
    implements $StreamResponseCopyWith<$Res> {
  factory $DescribeStreamRespCopyWith(
          DescribeStreamResp value, $Res Function(DescribeStreamResp) _then) =
      _$DescribeStreamRespCopyWithImpl;
  @useResult
  $Res call({DescribeResult result});

  $DescribeResultCopyWith<$Res> get result;
}

/// @nodoc
class _$DescribeStreamRespCopyWithImpl<$Res>
    implements $DescribeStreamRespCopyWith<$Res> {
  _$DescribeStreamRespCopyWithImpl(this._self, this._then);

  final DescribeStreamResp _self;
  final $Res Function(DescribeStreamResp) _then;

  /// Create a copy of StreamResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? result = null,
  }) {
    return _then(DescribeStreamResp(
      result: null == result
          ? _self.result
          : result // ignore: cast_nullable_to_non_nullable
              as DescribeResult,
    ));
  }

  /// Create a copy of StreamResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DescribeResultCopyWith<$Res> get result {
    return $DescribeResultCopyWith<$Res>(_self.result, (value) {
      return _then(_self.copyWith(result: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class StoreSqlStreamResp extends StreamResponse {
  const StoreSqlStreamResp({String? $type})
      : $type = $type ?? 'store_sql',
        super._();
  factory StoreSqlStreamResp.fromJson(Map<String, dynamic> json) =>
      _$StoreSqlStreamRespFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$StoreSqlStreamRespToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is StoreSqlStreamResp);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'StreamResponse.storeSql()';
  }
}

/// @nodoc
@JsonSerializable()
class CloseSqlStreamResp extends StreamResponse {
  const CloseSqlStreamResp({String? $type})
      : $type = $type ?? 'close_sql',
        super._();
  factory CloseSqlStreamResp.fromJson(Map<String, dynamic> json) =>
      _$CloseSqlStreamRespFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$CloseSqlStreamRespToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CloseSqlStreamResp);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'StreamResponse.closeSql()';
  }
}

/// @nodoc
@JsonSerializable()
class GetAutocommitStreamResp extends StreamResponse {
  const GetAutocommitStreamResp({required this.isAutocommit, String? $type})
      : $type = $type ?? 'get_autocommit',
        super._();
  factory GetAutocommitStreamResp.fromJson(Map<String, dynamic> json) =>
      _$GetAutocommitStreamRespFromJson(json);

  final bool isAutocommit;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of StreamResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetAutocommitStreamRespCopyWith<GetAutocommitStreamResp> get copyWith =>
      _$GetAutocommitStreamRespCopyWithImpl<GetAutocommitStreamResp>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GetAutocommitStreamRespToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetAutocommitStreamResp &&
            (identical(other.isAutocommit, isAutocommit) ||
                other.isAutocommit == isAutocommit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, isAutocommit);
  }

  @override
  String toString() {
    return 'StreamResponse.getAutocommit(isAutocommit: $isAutocommit)';
  }
}

/// @nodoc
abstract mixin class $GetAutocommitStreamRespCopyWith<$Res>
    implements $StreamResponseCopyWith<$Res> {
  factory $GetAutocommitStreamRespCopyWith(GetAutocommitStreamResp value,
          $Res Function(GetAutocommitStreamResp) _then) =
      _$GetAutocommitStreamRespCopyWithImpl;
  @useResult
  $Res call({bool isAutocommit});
}

/// @nodoc
class _$GetAutocommitStreamRespCopyWithImpl<$Res>
    implements $GetAutocommitStreamRespCopyWith<$Res> {
  _$GetAutocommitStreamRespCopyWithImpl(this._self, this._then);

  final GetAutocommitStreamResp _self;
  final $Res Function(GetAutocommitStreamResp) _then;

  /// Create a copy of StreamResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isAutocommit = null,
  }) {
    return _then(GetAutocommitStreamResp(
      isAutocommit: null == isAutocommit
          ? _self.isAutocommit
          : isAutocommit // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
