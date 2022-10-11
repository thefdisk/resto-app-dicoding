// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'restaurant_review_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RestaurantReviewFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GeneratedId restaurantId) restaurantIdChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function(String review) reviewChanged,
    required TResult Function() submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GeneratedId restaurantId)? restaurantIdChanged,
    TResult Function(String name)? nameChanged,
    TResult Function(String review)? reviewChanged,
    TResult Function()? submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GeneratedId restaurantId)? restaurantIdChanged,
    TResult Function(String name)? nameChanged,
    TResult Function(String review)? reviewChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RestaurantIdChanged value) restaurantIdChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_ReviewChanged value) reviewChanged,
    required TResult Function(_Submitted value) submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RestaurantIdChanged value)? restaurantIdChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ReviewChanged value)? reviewChanged,
    TResult Function(_Submitted value)? submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RestaurantIdChanged value)? restaurantIdChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ReviewChanged value)? reviewChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantReviewFormEventCopyWith<$Res> {
  factory $RestaurantReviewFormEventCopyWith(RestaurantReviewFormEvent value,
          $Res Function(RestaurantReviewFormEvent) then) =
      _$RestaurantReviewFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RestaurantReviewFormEventCopyWithImpl<$Res>
    implements $RestaurantReviewFormEventCopyWith<$Res> {
  _$RestaurantReviewFormEventCopyWithImpl(this._value, this._then);

  final RestaurantReviewFormEvent _value;
  // ignore: unused_field
  final $Res Function(RestaurantReviewFormEvent) _then;
}

/// @nodoc
abstract class _$$_RestaurantIdChangedCopyWith<$Res> {
  factory _$$_RestaurantIdChangedCopyWith(_$_RestaurantIdChanged value,
          $Res Function(_$_RestaurantIdChanged) then) =
      __$$_RestaurantIdChangedCopyWithImpl<$Res>;
  $Res call({GeneratedId restaurantId});
}

/// @nodoc
class __$$_RestaurantIdChangedCopyWithImpl<$Res>
    extends _$RestaurantReviewFormEventCopyWithImpl<$Res>
    implements _$$_RestaurantIdChangedCopyWith<$Res> {
  __$$_RestaurantIdChangedCopyWithImpl(_$_RestaurantIdChanged _value,
      $Res Function(_$_RestaurantIdChanged) _then)
      : super(_value, (v) => _then(v as _$_RestaurantIdChanged));

  @override
  _$_RestaurantIdChanged get _value => super._value as _$_RestaurantIdChanged;

  @override
  $Res call({
    Object? restaurantId = freezed,
  }) {
    return _then(_$_RestaurantIdChanged(
      restaurantId == freezed
          ? _value.restaurantId
          : restaurantId // ignore: cast_nullable_to_non_nullable
              as GeneratedId,
    ));
  }
}

/// @nodoc

class _$_RestaurantIdChanged implements _RestaurantIdChanged {
  const _$_RestaurantIdChanged(this.restaurantId);

  @override
  final GeneratedId restaurantId;

  @override
  String toString() {
    return 'RestaurantReviewFormEvent.restaurantIdChanged(restaurantId: $restaurantId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RestaurantIdChanged &&
            const DeepCollectionEquality()
                .equals(other.restaurantId, restaurantId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(restaurantId));

  @JsonKey(ignore: true)
  @override
  _$$_RestaurantIdChangedCopyWith<_$_RestaurantIdChanged> get copyWith =>
      __$$_RestaurantIdChangedCopyWithImpl<_$_RestaurantIdChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GeneratedId restaurantId) restaurantIdChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function(String review) reviewChanged,
    required TResult Function() submitted,
  }) {
    return restaurantIdChanged(restaurantId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GeneratedId restaurantId)? restaurantIdChanged,
    TResult Function(String name)? nameChanged,
    TResult Function(String review)? reviewChanged,
    TResult Function()? submitted,
  }) {
    return restaurantIdChanged?.call(restaurantId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GeneratedId restaurantId)? restaurantIdChanged,
    TResult Function(String name)? nameChanged,
    TResult Function(String review)? reviewChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (restaurantIdChanged != null) {
      return restaurantIdChanged(restaurantId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RestaurantIdChanged value) restaurantIdChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_ReviewChanged value) reviewChanged,
    required TResult Function(_Submitted value) submitted,
  }) {
    return restaurantIdChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RestaurantIdChanged value)? restaurantIdChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ReviewChanged value)? reviewChanged,
    TResult Function(_Submitted value)? submitted,
  }) {
    return restaurantIdChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RestaurantIdChanged value)? restaurantIdChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ReviewChanged value)? reviewChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (restaurantIdChanged != null) {
      return restaurantIdChanged(this);
    }
    return orElse();
  }
}

abstract class _RestaurantIdChanged implements RestaurantReviewFormEvent {
  const factory _RestaurantIdChanged(final GeneratedId restaurantId) =
      _$_RestaurantIdChanged;

  GeneratedId get restaurantId;
  @JsonKey(ignore: true)
  _$$_RestaurantIdChangedCopyWith<_$_RestaurantIdChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NameChangedCopyWith<$Res> {
  factory _$$_NameChangedCopyWith(
          _$_NameChanged value, $Res Function(_$_NameChanged) then) =
      __$$_NameChangedCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class __$$_NameChangedCopyWithImpl<$Res>
    extends _$RestaurantReviewFormEventCopyWithImpl<$Res>
    implements _$$_NameChangedCopyWith<$Res> {
  __$$_NameChangedCopyWithImpl(
      _$_NameChanged _value, $Res Function(_$_NameChanged) _then)
      : super(_value, (v) => _then(v as _$_NameChanged));

  @override
  _$_NameChanged get _value => super._value as _$_NameChanged;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$_NameChanged(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NameChanged implements _NameChanged {
  const _$_NameChanged(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'RestaurantReviewFormEvent.nameChanged(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NameChanged &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_NameChangedCopyWith<_$_NameChanged> get copyWith =>
      __$$_NameChangedCopyWithImpl<_$_NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GeneratedId restaurantId) restaurantIdChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function(String review) reviewChanged,
    required TResult Function() submitted,
  }) {
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GeneratedId restaurantId)? restaurantIdChanged,
    TResult Function(String name)? nameChanged,
    TResult Function(String review)? reviewChanged,
    TResult Function()? submitted,
  }) {
    return nameChanged?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GeneratedId restaurantId)? restaurantIdChanged,
    TResult Function(String name)? nameChanged,
    TResult Function(String review)? reviewChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RestaurantIdChanged value) restaurantIdChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_ReviewChanged value) reviewChanged,
    required TResult Function(_Submitted value) submitted,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RestaurantIdChanged value)? restaurantIdChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ReviewChanged value)? reviewChanged,
    TResult Function(_Submitted value)? submitted,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RestaurantIdChanged value)? restaurantIdChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ReviewChanged value)? reviewChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements RestaurantReviewFormEvent {
  const factory _NameChanged(final String name) = _$_NameChanged;

  String get name;
  @JsonKey(ignore: true)
  _$$_NameChangedCopyWith<_$_NameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ReviewChangedCopyWith<$Res> {
  factory _$$_ReviewChangedCopyWith(
          _$_ReviewChanged value, $Res Function(_$_ReviewChanged) then) =
      __$$_ReviewChangedCopyWithImpl<$Res>;
  $Res call({String review});
}

/// @nodoc
class __$$_ReviewChangedCopyWithImpl<$Res>
    extends _$RestaurantReviewFormEventCopyWithImpl<$Res>
    implements _$$_ReviewChangedCopyWith<$Res> {
  __$$_ReviewChangedCopyWithImpl(
      _$_ReviewChanged _value, $Res Function(_$_ReviewChanged) _then)
      : super(_value, (v) => _then(v as _$_ReviewChanged));

  @override
  _$_ReviewChanged get _value => super._value as _$_ReviewChanged;

  @override
  $Res call({
    Object? review = freezed,
  }) {
    return _then(_$_ReviewChanged(
      review == freezed
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ReviewChanged implements _ReviewChanged {
  const _$_ReviewChanged(this.review);

  @override
  final String review;

  @override
  String toString() {
    return 'RestaurantReviewFormEvent.reviewChanged(review: $review)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReviewChanged &&
            const DeepCollectionEquality().equals(other.review, review));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(review));

  @JsonKey(ignore: true)
  @override
  _$$_ReviewChangedCopyWith<_$_ReviewChanged> get copyWith =>
      __$$_ReviewChangedCopyWithImpl<_$_ReviewChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GeneratedId restaurantId) restaurantIdChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function(String review) reviewChanged,
    required TResult Function() submitted,
  }) {
    return reviewChanged(review);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GeneratedId restaurantId)? restaurantIdChanged,
    TResult Function(String name)? nameChanged,
    TResult Function(String review)? reviewChanged,
    TResult Function()? submitted,
  }) {
    return reviewChanged?.call(review);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GeneratedId restaurantId)? restaurantIdChanged,
    TResult Function(String name)? nameChanged,
    TResult Function(String review)? reviewChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (reviewChanged != null) {
      return reviewChanged(review);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RestaurantIdChanged value) restaurantIdChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_ReviewChanged value) reviewChanged,
    required TResult Function(_Submitted value) submitted,
  }) {
    return reviewChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RestaurantIdChanged value)? restaurantIdChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ReviewChanged value)? reviewChanged,
    TResult Function(_Submitted value)? submitted,
  }) {
    return reviewChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RestaurantIdChanged value)? restaurantIdChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ReviewChanged value)? reviewChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (reviewChanged != null) {
      return reviewChanged(this);
    }
    return orElse();
  }
}

abstract class _ReviewChanged implements RestaurantReviewFormEvent {
  const factory _ReviewChanged(final String review) = _$_ReviewChanged;

  String get review;
  @JsonKey(ignore: true)
  _$$_ReviewChangedCopyWith<_$_ReviewChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SubmittedCopyWith<$Res> {
  factory _$$_SubmittedCopyWith(
          _$_Submitted value, $Res Function(_$_Submitted) then) =
      __$$_SubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SubmittedCopyWithImpl<$Res>
    extends _$RestaurantReviewFormEventCopyWithImpl<$Res>
    implements _$$_SubmittedCopyWith<$Res> {
  __$$_SubmittedCopyWithImpl(
      _$_Submitted _value, $Res Function(_$_Submitted) _then)
      : super(_value, (v) => _then(v as _$_Submitted));

  @override
  _$_Submitted get _value => super._value as _$_Submitted;
}

/// @nodoc

class _$_Submitted implements _Submitted {
  const _$_Submitted();

  @override
  String toString() {
    return 'RestaurantReviewFormEvent.submitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Submitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GeneratedId restaurantId) restaurantIdChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function(String review) reviewChanged,
    required TResult Function() submitted,
  }) {
    return submitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GeneratedId restaurantId)? restaurantIdChanged,
    TResult Function(String name)? nameChanged,
    TResult Function(String review)? reviewChanged,
    TResult Function()? submitted,
  }) {
    return submitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GeneratedId restaurantId)? restaurantIdChanged,
    TResult Function(String name)? nameChanged,
    TResult Function(String review)? reviewChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RestaurantIdChanged value) restaurantIdChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_ReviewChanged value) reviewChanged,
    required TResult Function(_Submitted value) submitted,
  }) {
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RestaurantIdChanged value)? restaurantIdChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ReviewChanged value)? reviewChanged,
    TResult Function(_Submitted value)? submitted,
  }) {
    return submitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RestaurantIdChanged value)? restaurantIdChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ReviewChanged value)? reviewChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class _Submitted implements RestaurantReviewFormEvent {
  const factory _Submitted() = _$_Submitted;
}

/// @nodoc
mixin _$RestaurantReviewFormState {
  GeneratedId get restaurantId => throw _privateConstructorUsedError;
  StringSingleLine get name => throw _privateConstructorUsedError;
  StringSingleLine get review => throw _privateConstructorUsedError;
  Option<Either<RestaurantFailure, Unit>> get failureOrUnitOption =>
      throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RestaurantReviewFormStateCopyWith<RestaurantReviewFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantReviewFormStateCopyWith<$Res> {
  factory $RestaurantReviewFormStateCopyWith(RestaurantReviewFormState value,
          $Res Function(RestaurantReviewFormState) then) =
      _$RestaurantReviewFormStateCopyWithImpl<$Res>;
  $Res call(
      {GeneratedId restaurantId,
      StringSingleLine name,
      StringSingleLine review,
      Option<Either<RestaurantFailure, Unit>> failureOrUnitOption,
      bool isSubmitting});
}

/// @nodoc
class _$RestaurantReviewFormStateCopyWithImpl<$Res>
    implements $RestaurantReviewFormStateCopyWith<$Res> {
  _$RestaurantReviewFormStateCopyWithImpl(this._value, this._then);

  final RestaurantReviewFormState _value;
  // ignore: unused_field
  final $Res Function(RestaurantReviewFormState) _then;

  @override
  $Res call({
    Object? restaurantId = freezed,
    Object? name = freezed,
    Object? review = freezed,
    Object? failureOrUnitOption = freezed,
    Object? isSubmitting = freezed,
  }) {
    return _then(_value.copyWith(
      restaurantId: restaurantId == freezed
          ? _value.restaurantId
          : restaurantId // ignore: cast_nullable_to_non_nullable
              as GeneratedId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as StringSingleLine,
      review: review == freezed
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as StringSingleLine,
      failureOrUnitOption: failureOrUnitOption == freezed
          ? _value.failureOrUnitOption
          : failureOrUnitOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<RestaurantFailure, Unit>>,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_RestaurantReviewFormStateCopyWith<$Res>
    implements $RestaurantReviewFormStateCopyWith<$Res> {
  factory _$$_RestaurantReviewFormStateCopyWith(
          _$_RestaurantReviewFormState value,
          $Res Function(_$_RestaurantReviewFormState) then) =
      __$$_RestaurantReviewFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {GeneratedId restaurantId,
      StringSingleLine name,
      StringSingleLine review,
      Option<Either<RestaurantFailure, Unit>> failureOrUnitOption,
      bool isSubmitting});
}

/// @nodoc
class __$$_RestaurantReviewFormStateCopyWithImpl<$Res>
    extends _$RestaurantReviewFormStateCopyWithImpl<$Res>
    implements _$$_RestaurantReviewFormStateCopyWith<$Res> {
  __$$_RestaurantReviewFormStateCopyWithImpl(
      _$_RestaurantReviewFormState _value,
      $Res Function(_$_RestaurantReviewFormState) _then)
      : super(_value, (v) => _then(v as _$_RestaurantReviewFormState));

  @override
  _$_RestaurantReviewFormState get _value =>
      super._value as _$_RestaurantReviewFormState;

  @override
  $Res call({
    Object? restaurantId = freezed,
    Object? name = freezed,
    Object? review = freezed,
    Object? failureOrUnitOption = freezed,
    Object? isSubmitting = freezed,
  }) {
    return _then(_$_RestaurantReviewFormState(
      restaurantId: restaurantId == freezed
          ? _value.restaurantId
          : restaurantId // ignore: cast_nullable_to_non_nullable
              as GeneratedId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as StringSingleLine,
      review: review == freezed
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as StringSingleLine,
      failureOrUnitOption: failureOrUnitOption == freezed
          ? _value.failureOrUnitOption
          : failureOrUnitOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<RestaurantFailure, Unit>>,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_RestaurantReviewFormState implements _RestaurantReviewFormState {
  const _$_RestaurantReviewFormState(
      {required this.restaurantId,
      required this.name,
      required this.review,
      required this.failureOrUnitOption,
      this.isSubmitting = false});

  @override
  final GeneratedId restaurantId;
  @override
  final StringSingleLine name;
  @override
  final StringSingleLine review;
  @override
  final Option<Either<RestaurantFailure, Unit>> failureOrUnitOption;
  @override
  @JsonKey()
  final bool isSubmitting;

  @override
  String toString() {
    return 'RestaurantReviewFormState(restaurantId: $restaurantId, name: $name, review: $review, failureOrUnitOption: $failureOrUnitOption, isSubmitting: $isSubmitting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RestaurantReviewFormState &&
            const DeepCollectionEquality()
                .equals(other.restaurantId, restaurantId) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.review, review) &&
            const DeepCollectionEquality()
                .equals(other.failureOrUnitOption, failureOrUnitOption) &&
            const DeepCollectionEquality()
                .equals(other.isSubmitting, isSubmitting));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(restaurantId),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(review),
      const DeepCollectionEquality().hash(failureOrUnitOption),
      const DeepCollectionEquality().hash(isSubmitting));

  @JsonKey(ignore: true)
  @override
  _$$_RestaurantReviewFormStateCopyWith<_$_RestaurantReviewFormState>
      get copyWith => __$$_RestaurantReviewFormStateCopyWithImpl<
          _$_RestaurantReviewFormState>(this, _$identity);
}

abstract class _RestaurantReviewFormState implements RestaurantReviewFormState {
  const factory _RestaurantReviewFormState(
      {required final GeneratedId restaurantId,
      required final StringSingleLine name,
      required final StringSingleLine review,
      required final Option<Either<RestaurantFailure, Unit>>
          failureOrUnitOption,
      final bool isSubmitting}) = _$_RestaurantReviewFormState;

  @override
  GeneratedId get restaurantId;
  @override
  StringSingleLine get name;
  @override
  StringSingleLine get review;
  @override
  Option<Either<RestaurantFailure, Unit>> get failureOrUnitOption;
  @override
  bool get isSubmitting;
  @override
  @JsonKey(ignore: true)
  _$$_RestaurantReviewFormStateCopyWith<_$_RestaurantReviewFormState>
      get copyWith => throw _privateConstructorUsedError;
}
