// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'api_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ApiFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int statusCode, Object errorMessage) serverError,
    required TResult Function(Object? errorMessage, StackTrace? stackTrace)
        unexpectedError,
    required TResult Function() connectionError,
    required TResult Function() internalServerError,
    required TResult Function() unauthorized,
    required TResult Function() badRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int statusCode, Object errorMessage)? serverError,
    TResult Function(Object? errorMessage, StackTrace? stackTrace)?
        unexpectedError,
    TResult Function()? connectionError,
    TResult Function()? internalServerError,
    TResult Function()? unauthorized,
    TResult Function()? badRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int statusCode, Object errorMessage)? serverError,
    TResult Function(Object? errorMessage, StackTrace? stackTrace)?
        unexpectedError,
    TResult Function()? connectionError,
    TResult Function()? internalServerError,
    TResult Function()? unauthorized,
    TResult Function()? badRequest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_UnexpectedError value) unexpectedError,
    required TResult Function(_ConnectionError value) connectionError,
    required TResult Function(_InternalServerError value) internalServerError,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_BadRequest value) badRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_ConnectionError value)? connectionError,
    TResult Function(_InternalServerError value)? internalServerError,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_BadRequest value)? badRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_ConnectionError value)? connectionError,
    TResult Function(_InternalServerError value)? internalServerError,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_BadRequest value)? badRequest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiFailureCopyWith<$Res> {
  factory $ApiFailureCopyWith(
          ApiFailure value, $Res Function(ApiFailure) then) =
      _$ApiFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$ApiFailureCopyWithImpl<$Res> implements $ApiFailureCopyWith<$Res> {
  _$ApiFailureCopyWithImpl(this._value, this._then);

  final ApiFailure _value;
  // ignore: unused_field
  final $Res Function(ApiFailure) _then;
}

/// @nodoc
abstract class _$$_ServerErrorCopyWith<$Res> {
  factory _$$_ServerErrorCopyWith(
          _$_ServerError value, $Res Function(_$_ServerError) then) =
      __$$_ServerErrorCopyWithImpl<$Res>;
  $Res call({int statusCode, Object errorMessage});
}

/// @nodoc
class __$$_ServerErrorCopyWithImpl<$Res> extends _$ApiFailureCopyWithImpl<$Res>
    implements _$$_ServerErrorCopyWith<$Res> {
  __$$_ServerErrorCopyWithImpl(
      _$_ServerError _value, $Res Function(_$_ServerError) _then)
      : super(_value, (v) => _then(v as _$_ServerError));

  @override
  _$_ServerError get _value => super._value as _$_ServerError;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_ServerError(
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

/// @nodoc

class _$_ServerError extends _ServerError {
  const _$_ServerError({required this.statusCode, required this.errorMessage})
      : super._();

  @override
  final int statusCode;
  @override
  final Object errorMessage;

  @override
  String toString() {
    return 'ApiFailure.serverError(statusCode: $statusCode, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServerError &&
            const DeepCollectionEquality()
                .equals(other.statusCode, statusCode) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(statusCode),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$_ServerErrorCopyWith<_$_ServerError> get copyWith =>
      __$$_ServerErrorCopyWithImpl<_$_ServerError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int statusCode, Object errorMessage) serverError,
    required TResult Function(Object? errorMessage, StackTrace? stackTrace)
        unexpectedError,
    required TResult Function() connectionError,
    required TResult Function() internalServerError,
    required TResult Function() unauthorized,
    required TResult Function() badRequest,
  }) {
    return serverError(statusCode, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int statusCode, Object errorMessage)? serverError,
    TResult Function(Object? errorMessage, StackTrace? stackTrace)?
        unexpectedError,
    TResult Function()? connectionError,
    TResult Function()? internalServerError,
    TResult Function()? unauthorized,
    TResult Function()? badRequest,
  }) {
    return serverError?.call(statusCode, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int statusCode, Object errorMessage)? serverError,
    TResult Function(Object? errorMessage, StackTrace? stackTrace)?
        unexpectedError,
    TResult Function()? connectionError,
    TResult Function()? internalServerError,
    TResult Function()? unauthorized,
    TResult Function()? badRequest,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(statusCode, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_UnexpectedError value) unexpectedError,
    required TResult Function(_ConnectionError value) connectionError,
    required TResult Function(_InternalServerError value) internalServerError,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_BadRequest value) badRequest,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_ConnectionError value)? connectionError,
    TResult Function(_InternalServerError value)? internalServerError,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_BadRequest value)? badRequest,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_ConnectionError value)? connectionError,
    TResult Function(_InternalServerError value)? internalServerError,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_BadRequest value)? badRequest,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError extends ApiFailure {
  const factory _ServerError(
      {required final int statusCode,
      required final Object errorMessage}) = _$_ServerError;
  const _ServerError._() : super._();

  int get statusCode;
  Object get errorMessage;
  @JsonKey(ignore: true)
  _$$_ServerErrorCopyWith<_$_ServerError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UnexpectedErrorCopyWith<$Res> {
  factory _$$_UnexpectedErrorCopyWith(
          _$_UnexpectedError value, $Res Function(_$_UnexpectedError) then) =
      __$$_UnexpectedErrorCopyWithImpl<$Res>;
  $Res call({Object? errorMessage, StackTrace? stackTrace});
}

/// @nodoc
class __$$_UnexpectedErrorCopyWithImpl<$Res>
    extends _$ApiFailureCopyWithImpl<$Res>
    implements _$$_UnexpectedErrorCopyWith<$Res> {
  __$$_UnexpectedErrorCopyWithImpl(
      _$_UnexpectedError _value, $Res Function(_$_UnexpectedError) _then)
      : super(_value, (v) => _then(v as _$_UnexpectedError));

  @override
  _$_UnexpectedError get _value => super._value as _$_UnexpectedError;

  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_$_UnexpectedError(
      errorMessage:
          errorMessage == freezed ? _value.errorMessage : errorMessage,
      stackTrace: stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$_UnexpectedError extends _UnexpectedError {
  const _$_UnexpectedError({this.errorMessage, this.stackTrace}) : super._();

  @override
  final Object? errorMessage;
  @override
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'ApiFailure.unexpectedError(errorMessage: $errorMessage, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UnexpectedError &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage) &&
            const DeepCollectionEquality()
                .equals(other.stackTrace, stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(errorMessage),
      const DeepCollectionEquality().hash(stackTrace));

  @JsonKey(ignore: true)
  @override
  _$$_UnexpectedErrorCopyWith<_$_UnexpectedError> get copyWith =>
      __$$_UnexpectedErrorCopyWithImpl<_$_UnexpectedError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int statusCode, Object errorMessage) serverError,
    required TResult Function(Object? errorMessage, StackTrace? stackTrace)
        unexpectedError,
    required TResult Function() connectionError,
    required TResult Function() internalServerError,
    required TResult Function() unauthorized,
    required TResult Function() badRequest,
  }) {
    return unexpectedError(errorMessage, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int statusCode, Object errorMessage)? serverError,
    TResult Function(Object? errorMessage, StackTrace? stackTrace)?
        unexpectedError,
    TResult Function()? connectionError,
    TResult Function()? internalServerError,
    TResult Function()? unauthorized,
    TResult Function()? badRequest,
  }) {
    return unexpectedError?.call(errorMessage, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int statusCode, Object errorMessage)? serverError,
    TResult Function(Object? errorMessage, StackTrace? stackTrace)?
        unexpectedError,
    TResult Function()? connectionError,
    TResult Function()? internalServerError,
    TResult Function()? unauthorized,
    TResult Function()? badRequest,
    required TResult orElse(),
  }) {
    if (unexpectedError != null) {
      return unexpectedError(errorMessage, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_UnexpectedError value) unexpectedError,
    required TResult Function(_ConnectionError value) connectionError,
    required TResult Function(_InternalServerError value) internalServerError,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_BadRequest value) badRequest,
  }) {
    return unexpectedError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_ConnectionError value)? connectionError,
    TResult Function(_InternalServerError value)? internalServerError,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_BadRequest value)? badRequest,
  }) {
    return unexpectedError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_ConnectionError value)? connectionError,
    TResult Function(_InternalServerError value)? internalServerError,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_BadRequest value)? badRequest,
    required TResult orElse(),
  }) {
    if (unexpectedError != null) {
      return unexpectedError(this);
    }
    return orElse();
  }
}

abstract class _UnexpectedError extends ApiFailure {
  const factory _UnexpectedError(
      {final Object? errorMessage,
      final StackTrace? stackTrace}) = _$_UnexpectedError;
  const _UnexpectedError._() : super._();

  Object? get errorMessage;
  StackTrace? get stackTrace;
  @JsonKey(ignore: true)
  _$$_UnexpectedErrorCopyWith<_$_UnexpectedError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ConnectionErrorCopyWith<$Res> {
  factory _$$_ConnectionErrorCopyWith(
          _$_ConnectionError value, $Res Function(_$_ConnectionError) then) =
      __$$_ConnectionErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ConnectionErrorCopyWithImpl<$Res>
    extends _$ApiFailureCopyWithImpl<$Res>
    implements _$$_ConnectionErrorCopyWith<$Res> {
  __$$_ConnectionErrorCopyWithImpl(
      _$_ConnectionError _value, $Res Function(_$_ConnectionError) _then)
      : super(_value, (v) => _then(v as _$_ConnectionError));

  @override
  _$_ConnectionError get _value => super._value as _$_ConnectionError;
}

/// @nodoc

class _$_ConnectionError extends _ConnectionError {
  const _$_ConnectionError() : super._();

  @override
  String toString() {
    return 'ApiFailure.connectionError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ConnectionError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int statusCode, Object errorMessage) serverError,
    required TResult Function(Object? errorMessage, StackTrace? stackTrace)
        unexpectedError,
    required TResult Function() connectionError,
    required TResult Function() internalServerError,
    required TResult Function() unauthorized,
    required TResult Function() badRequest,
  }) {
    return connectionError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int statusCode, Object errorMessage)? serverError,
    TResult Function(Object? errorMessage, StackTrace? stackTrace)?
        unexpectedError,
    TResult Function()? connectionError,
    TResult Function()? internalServerError,
    TResult Function()? unauthorized,
    TResult Function()? badRequest,
  }) {
    return connectionError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int statusCode, Object errorMessage)? serverError,
    TResult Function(Object? errorMessage, StackTrace? stackTrace)?
        unexpectedError,
    TResult Function()? connectionError,
    TResult Function()? internalServerError,
    TResult Function()? unauthorized,
    TResult Function()? badRequest,
    required TResult orElse(),
  }) {
    if (connectionError != null) {
      return connectionError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_UnexpectedError value) unexpectedError,
    required TResult Function(_ConnectionError value) connectionError,
    required TResult Function(_InternalServerError value) internalServerError,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_BadRequest value) badRequest,
  }) {
    return connectionError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_ConnectionError value)? connectionError,
    TResult Function(_InternalServerError value)? internalServerError,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_BadRequest value)? badRequest,
  }) {
    return connectionError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_ConnectionError value)? connectionError,
    TResult Function(_InternalServerError value)? internalServerError,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_BadRequest value)? badRequest,
    required TResult orElse(),
  }) {
    if (connectionError != null) {
      return connectionError(this);
    }
    return orElse();
  }
}

abstract class _ConnectionError extends ApiFailure {
  const factory _ConnectionError() = _$_ConnectionError;
  const _ConnectionError._() : super._();
}

/// @nodoc
abstract class _$$_InternalServerErrorCopyWith<$Res> {
  factory _$$_InternalServerErrorCopyWith(_$_InternalServerError value,
          $Res Function(_$_InternalServerError) then) =
      __$$_InternalServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InternalServerErrorCopyWithImpl<$Res>
    extends _$ApiFailureCopyWithImpl<$Res>
    implements _$$_InternalServerErrorCopyWith<$Res> {
  __$$_InternalServerErrorCopyWithImpl(_$_InternalServerError _value,
      $Res Function(_$_InternalServerError) _then)
      : super(_value, (v) => _then(v as _$_InternalServerError));

  @override
  _$_InternalServerError get _value => super._value as _$_InternalServerError;
}

/// @nodoc

class _$_InternalServerError extends _InternalServerError {
  const _$_InternalServerError() : super._();

  @override
  String toString() {
    return 'ApiFailure.internalServerError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InternalServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int statusCode, Object errorMessage) serverError,
    required TResult Function(Object? errorMessage, StackTrace? stackTrace)
        unexpectedError,
    required TResult Function() connectionError,
    required TResult Function() internalServerError,
    required TResult Function() unauthorized,
    required TResult Function() badRequest,
  }) {
    return internalServerError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int statusCode, Object errorMessage)? serverError,
    TResult Function(Object? errorMessage, StackTrace? stackTrace)?
        unexpectedError,
    TResult Function()? connectionError,
    TResult Function()? internalServerError,
    TResult Function()? unauthorized,
    TResult Function()? badRequest,
  }) {
    return internalServerError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int statusCode, Object errorMessage)? serverError,
    TResult Function(Object? errorMessage, StackTrace? stackTrace)?
        unexpectedError,
    TResult Function()? connectionError,
    TResult Function()? internalServerError,
    TResult Function()? unauthorized,
    TResult Function()? badRequest,
    required TResult orElse(),
  }) {
    if (internalServerError != null) {
      return internalServerError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_UnexpectedError value) unexpectedError,
    required TResult Function(_ConnectionError value) connectionError,
    required TResult Function(_InternalServerError value) internalServerError,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_BadRequest value) badRequest,
  }) {
    return internalServerError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_ConnectionError value)? connectionError,
    TResult Function(_InternalServerError value)? internalServerError,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_BadRequest value)? badRequest,
  }) {
    return internalServerError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_ConnectionError value)? connectionError,
    TResult Function(_InternalServerError value)? internalServerError,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_BadRequest value)? badRequest,
    required TResult orElse(),
  }) {
    if (internalServerError != null) {
      return internalServerError(this);
    }
    return orElse();
  }
}

abstract class _InternalServerError extends ApiFailure {
  const factory _InternalServerError() = _$_InternalServerError;
  const _InternalServerError._() : super._();
}

/// @nodoc
abstract class _$$_UnauthorizedCopyWith<$Res> {
  factory _$$_UnauthorizedCopyWith(
          _$_Unauthorized value, $Res Function(_$_Unauthorized) then) =
      __$$_UnauthorizedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnauthorizedCopyWithImpl<$Res> extends _$ApiFailureCopyWithImpl<$Res>
    implements _$$_UnauthorizedCopyWith<$Res> {
  __$$_UnauthorizedCopyWithImpl(
      _$_Unauthorized _value, $Res Function(_$_Unauthorized) _then)
      : super(_value, (v) => _then(v as _$_Unauthorized));

  @override
  _$_Unauthorized get _value => super._value as _$_Unauthorized;
}

/// @nodoc

class _$_Unauthorized extends _Unauthorized {
  const _$_Unauthorized() : super._();

  @override
  String toString() {
    return 'ApiFailure.unauthorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Unauthorized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int statusCode, Object errorMessage) serverError,
    required TResult Function(Object? errorMessage, StackTrace? stackTrace)
        unexpectedError,
    required TResult Function() connectionError,
    required TResult Function() internalServerError,
    required TResult Function() unauthorized,
    required TResult Function() badRequest,
  }) {
    return unauthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int statusCode, Object errorMessage)? serverError,
    TResult Function(Object? errorMessage, StackTrace? stackTrace)?
        unexpectedError,
    TResult Function()? connectionError,
    TResult Function()? internalServerError,
    TResult Function()? unauthorized,
    TResult Function()? badRequest,
  }) {
    return unauthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int statusCode, Object errorMessage)? serverError,
    TResult Function(Object? errorMessage, StackTrace? stackTrace)?
        unexpectedError,
    TResult Function()? connectionError,
    TResult Function()? internalServerError,
    TResult Function()? unauthorized,
    TResult Function()? badRequest,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_UnexpectedError value) unexpectedError,
    required TResult Function(_ConnectionError value) connectionError,
    required TResult Function(_InternalServerError value) internalServerError,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_BadRequest value) badRequest,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_ConnectionError value)? connectionError,
    TResult Function(_InternalServerError value)? internalServerError,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_BadRequest value)? badRequest,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_ConnectionError value)? connectionError,
    TResult Function(_InternalServerError value)? internalServerError,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_BadRequest value)? badRequest,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class _Unauthorized extends ApiFailure {
  const factory _Unauthorized() = _$_Unauthorized;
  const _Unauthorized._() : super._();
}

/// @nodoc
abstract class _$$_BadRequestCopyWith<$Res> {
  factory _$$_BadRequestCopyWith(
          _$_BadRequest value, $Res Function(_$_BadRequest) then) =
      __$$_BadRequestCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_BadRequestCopyWithImpl<$Res> extends _$ApiFailureCopyWithImpl<$Res>
    implements _$$_BadRequestCopyWith<$Res> {
  __$$_BadRequestCopyWithImpl(
      _$_BadRequest _value, $Res Function(_$_BadRequest) _then)
      : super(_value, (v) => _then(v as _$_BadRequest));

  @override
  _$_BadRequest get _value => super._value as _$_BadRequest;
}

/// @nodoc

class _$_BadRequest extends _BadRequest {
  const _$_BadRequest() : super._();

  @override
  String toString() {
    return 'ApiFailure.badRequest()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_BadRequest);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int statusCode, Object errorMessage) serverError,
    required TResult Function(Object? errorMessage, StackTrace? stackTrace)
        unexpectedError,
    required TResult Function() connectionError,
    required TResult Function() internalServerError,
    required TResult Function() unauthorized,
    required TResult Function() badRequest,
  }) {
    return badRequest();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int statusCode, Object errorMessage)? serverError,
    TResult Function(Object? errorMessage, StackTrace? stackTrace)?
        unexpectedError,
    TResult Function()? connectionError,
    TResult Function()? internalServerError,
    TResult Function()? unauthorized,
    TResult Function()? badRequest,
  }) {
    return badRequest?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int statusCode, Object errorMessage)? serverError,
    TResult Function(Object? errorMessage, StackTrace? stackTrace)?
        unexpectedError,
    TResult Function()? connectionError,
    TResult Function()? internalServerError,
    TResult Function()? unauthorized,
    TResult Function()? badRequest,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_UnexpectedError value) unexpectedError,
    required TResult Function(_ConnectionError value) connectionError,
    required TResult Function(_InternalServerError value) internalServerError,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_BadRequest value) badRequest,
  }) {
    return badRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_ConnectionError value)? connectionError,
    TResult Function(_InternalServerError value)? internalServerError,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_BadRequest value)? badRequest,
  }) {
    return badRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_ConnectionError value)? connectionError,
    TResult Function(_InternalServerError value)? internalServerError,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_BadRequest value)? badRequest,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(this);
    }
    return orElse();
  }
}

abstract class _BadRequest extends ApiFailure {
  const factory _BadRequest() = _$_BadRequest;
  const _BadRequest._() : super._();
}
