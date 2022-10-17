// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'restaurant_favorite_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RestaurantFavoriteActorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetched,
    required TResult Function(Restaurant restaurant) added,
    required TResult Function(GeneratedId restaurantId) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetched,
    TResult Function(Restaurant restaurant)? added,
    TResult Function(GeneratedId restaurantId)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetched,
    TResult Function(Restaurant restaurant)? added,
    TResult Function(GeneratedId restaurantId)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetched value) fetched,
    required TResult Function(_Added value) added,
    required TResult Function(_Deleted value) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Fetched value)? fetched,
    TResult Function(_Added value)? added,
    TResult Function(_Deleted value)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetched value)? fetched,
    TResult Function(_Added value)? added,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantFavoriteActorEventCopyWith<$Res> {
  factory $RestaurantFavoriteActorEventCopyWith(
          RestaurantFavoriteActorEvent value,
          $Res Function(RestaurantFavoriteActorEvent) then) =
      _$RestaurantFavoriteActorEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RestaurantFavoriteActorEventCopyWithImpl<$Res>
    implements $RestaurantFavoriteActorEventCopyWith<$Res> {
  _$RestaurantFavoriteActorEventCopyWithImpl(this._value, this._then);

  final RestaurantFavoriteActorEvent _value;
  // ignore: unused_field
  final $Res Function(RestaurantFavoriteActorEvent) _then;
}

/// @nodoc
abstract class _$$_FetchedCopyWith<$Res> {
  factory _$$_FetchedCopyWith(
          _$_Fetched value, $Res Function(_$_Fetched) then) =
      __$$_FetchedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchedCopyWithImpl<$Res>
    extends _$RestaurantFavoriteActorEventCopyWithImpl<$Res>
    implements _$$_FetchedCopyWith<$Res> {
  __$$_FetchedCopyWithImpl(_$_Fetched _value, $Res Function(_$_Fetched) _then)
      : super(_value, (v) => _then(v as _$_Fetched));

  @override
  _$_Fetched get _value => super._value as _$_Fetched;
}

/// @nodoc

class _$_Fetched implements _Fetched {
  const _$_Fetched();

  @override
  String toString() {
    return 'RestaurantFavoriteActorEvent.fetched()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Fetched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetched,
    required TResult Function(Restaurant restaurant) added,
    required TResult Function(GeneratedId restaurantId) deleted,
  }) {
    return fetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetched,
    TResult Function(Restaurant restaurant)? added,
    TResult Function(GeneratedId restaurantId)? deleted,
  }) {
    return fetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetched,
    TResult Function(Restaurant restaurant)? added,
    TResult Function(GeneratedId restaurantId)? deleted,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetched value) fetched,
    required TResult Function(_Added value) added,
    required TResult Function(_Deleted value) deleted,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Fetched value)? fetched,
    TResult Function(_Added value)? added,
    TResult Function(_Deleted value)? deleted,
  }) {
    return fetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetched value)? fetched,
    TResult Function(_Added value)? added,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class _Fetched implements RestaurantFavoriteActorEvent {
  const factory _Fetched() = _$_Fetched;
}

/// @nodoc
abstract class _$$_AddedCopyWith<$Res> {
  factory _$$_AddedCopyWith(_$_Added value, $Res Function(_$_Added) then) =
      __$$_AddedCopyWithImpl<$Res>;
  $Res call({Restaurant restaurant});

  $RestaurantCopyWith<$Res> get restaurant;
}

/// @nodoc
class __$$_AddedCopyWithImpl<$Res>
    extends _$RestaurantFavoriteActorEventCopyWithImpl<$Res>
    implements _$$_AddedCopyWith<$Res> {
  __$$_AddedCopyWithImpl(_$_Added _value, $Res Function(_$_Added) _then)
      : super(_value, (v) => _then(v as _$_Added));

  @override
  _$_Added get _value => super._value as _$_Added;

  @override
  $Res call({
    Object? restaurant = freezed,
  }) {
    return _then(_$_Added(
      restaurant == freezed
          ? _value.restaurant
          : restaurant // ignore: cast_nullable_to_non_nullable
              as Restaurant,
    ));
  }

  @override
  $RestaurantCopyWith<$Res> get restaurant {
    return $RestaurantCopyWith<$Res>(_value.restaurant, (value) {
      return _then(_value.copyWith(restaurant: value));
    });
  }
}

/// @nodoc

class _$_Added implements _Added {
  const _$_Added(this.restaurant);

  @override
  final Restaurant restaurant;

  @override
  String toString() {
    return 'RestaurantFavoriteActorEvent.added(restaurant: $restaurant)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Added &&
            const DeepCollectionEquality()
                .equals(other.restaurant, restaurant));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(restaurant));

  @JsonKey(ignore: true)
  @override
  _$$_AddedCopyWith<_$_Added> get copyWith =>
      __$$_AddedCopyWithImpl<_$_Added>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetched,
    required TResult Function(Restaurant restaurant) added,
    required TResult Function(GeneratedId restaurantId) deleted,
  }) {
    return added(restaurant);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetched,
    TResult Function(Restaurant restaurant)? added,
    TResult Function(GeneratedId restaurantId)? deleted,
  }) {
    return added?.call(restaurant);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetched,
    TResult Function(Restaurant restaurant)? added,
    TResult Function(GeneratedId restaurantId)? deleted,
    required TResult orElse(),
  }) {
    if (added != null) {
      return added(restaurant);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetched value) fetched,
    required TResult Function(_Added value) added,
    required TResult Function(_Deleted value) deleted,
  }) {
    return added(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Fetched value)? fetched,
    TResult Function(_Added value)? added,
    TResult Function(_Deleted value)? deleted,
  }) {
    return added?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetched value)? fetched,
    TResult Function(_Added value)? added,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (added != null) {
      return added(this);
    }
    return orElse();
  }
}

abstract class _Added implements RestaurantFavoriteActorEvent {
  const factory _Added(final Restaurant restaurant) = _$_Added;

  Restaurant get restaurant;
  @JsonKey(ignore: true)
  _$$_AddedCopyWith<_$_Added> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeletedCopyWith<$Res> {
  factory _$$_DeletedCopyWith(
          _$_Deleted value, $Res Function(_$_Deleted) then) =
      __$$_DeletedCopyWithImpl<$Res>;
  $Res call({GeneratedId restaurantId});
}

/// @nodoc
class __$$_DeletedCopyWithImpl<$Res>
    extends _$RestaurantFavoriteActorEventCopyWithImpl<$Res>
    implements _$$_DeletedCopyWith<$Res> {
  __$$_DeletedCopyWithImpl(_$_Deleted _value, $Res Function(_$_Deleted) _then)
      : super(_value, (v) => _then(v as _$_Deleted));

  @override
  _$_Deleted get _value => super._value as _$_Deleted;

  @override
  $Res call({
    Object? restaurantId = freezed,
  }) {
    return _then(_$_Deleted(
      restaurantId == freezed
          ? _value.restaurantId
          : restaurantId // ignore: cast_nullable_to_non_nullable
              as GeneratedId,
    ));
  }
}

/// @nodoc

class _$_Deleted implements _Deleted {
  const _$_Deleted(this.restaurantId);

  @override
  final GeneratedId restaurantId;

  @override
  String toString() {
    return 'RestaurantFavoriteActorEvent.deleted(restaurantId: $restaurantId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Deleted &&
            const DeepCollectionEquality()
                .equals(other.restaurantId, restaurantId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(restaurantId));

  @JsonKey(ignore: true)
  @override
  _$$_DeletedCopyWith<_$_Deleted> get copyWith =>
      __$$_DeletedCopyWithImpl<_$_Deleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetched,
    required TResult Function(Restaurant restaurant) added,
    required TResult Function(GeneratedId restaurantId) deleted,
  }) {
    return deleted(restaurantId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetched,
    TResult Function(Restaurant restaurant)? added,
    TResult Function(GeneratedId restaurantId)? deleted,
  }) {
    return deleted?.call(restaurantId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetched,
    TResult Function(Restaurant restaurant)? added,
    TResult Function(GeneratedId restaurantId)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(restaurantId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetched value) fetched,
    required TResult Function(_Added value) added,
    required TResult Function(_Deleted value) deleted,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Fetched value)? fetched,
    TResult Function(_Added value)? added,
    TResult Function(_Deleted value)? deleted,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetched value)? fetched,
    TResult Function(_Added value)? added,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _Deleted implements RestaurantFavoriteActorEvent {
  const factory _Deleted(final GeneratedId restaurantId) = _$_Deleted;

  GeneratedId get restaurantId;
  @JsonKey(ignore: true)
  _$$_DeletedCopyWith<_$_Deleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RestaurantFavoriteActorState {
  KtList<Restaurant> get restaurants => throw _privateConstructorUsedError;
  Option<RestaurantFailure> get failureOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RestaurantFavoriteActorStateCopyWith<RestaurantFavoriteActorState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantFavoriteActorStateCopyWith<$Res> {
  factory $RestaurantFavoriteActorStateCopyWith(
          RestaurantFavoriteActorState value,
          $Res Function(RestaurantFavoriteActorState) then) =
      _$RestaurantFavoriteActorStateCopyWithImpl<$Res>;
  $Res call(
      {KtList<Restaurant> restaurants,
      Option<RestaurantFailure> failureOption});
}

/// @nodoc
class _$RestaurantFavoriteActorStateCopyWithImpl<$Res>
    implements $RestaurantFavoriteActorStateCopyWith<$Res> {
  _$RestaurantFavoriteActorStateCopyWithImpl(this._value, this._then);

  final RestaurantFavoriteActorState _value;
  // ignore: unused_field
  final $Res Function(RestaurantFavoriteActorState) _then;

  @override
  $Res call({
    Object? restaurants = freezed,
    Object? failureOption = freezed,
  }) {
    return _then(_value.copyWith(
      restaurants: restaurants == freezed
          ? _value.restaurants
          : restaurants // ignore: cast_nullable_to_non_nullable
              as KtList<Restaurant>,
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<RestaurantFailure>,
    ));
  }
}

/// @nodoc
abstract class _$$_RestaurantFavoriteActorStateCopyWith<$Res>
    implements $RestaurantFavoriteActorStateCopyWith<$Res> {
  factory _$$_RestaurantFavoriteActorStateCopyWith(
          _$_RestaurantFavoriteActorState value,
          $Res Function(_$_RestaurantFavoriteActorState) then) =
      __$$_RestaurantFavoriteActorStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {KtList<Restaurant> restaurants,
      Option<RestaurantFailure> failureOption});
}

/// @nodoc
class __$$_RestaurantFavoriteActorStateCopyWithImpl<$Res>
    extends _$RestaurantFavoriteActorStateCopyWithImpl<$Res>
    implements _$$_RestaurantFavoriteActorStateCopyWith<$Res> {
  __$$_RestaurantFavoriteActorStateCopyWithImpl(
      _$_RestaurantFavoriteActorState _value,
      $Res Function(_$_RestaurantFavoriteActorState) _then)
      : super(_value, (v) => _then(v as _$_RestaurantFavoriteActorState));

  @override
  _$_RestaurantFavoriteActorState get _value =>
      super._value as _$_RestaurantFavoriteActorState;

  @override
  $Res call({
    Object? restaurants = freezed,
    Object? failureOption = freezed,
  }) {
    return _then(_$_RestaurantFavoriteActorState(
      restaurants: restaurants == freezed
          ? _value.restaurants
          : restaurants // ignore: cast_nullable_to_non_nullable
              as KtList<Restaurant>,
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<RestaurantFailure>,
    ));
  }
}

/// @nodoc

class _$_RestaurantFavoriteActorState implements _RestaurantFavoriteActorState {
  const _$_RestaurantFavoriteActorState(
      {required this.restaurants, required this.failureOption});

  @override
  final KtList<Restaurant> restaurants;
  @override
  final Option<RestaurantFailure> failureOption;

  @override
  String toString() {
    return 'RestaurantFavoriteActorState(restaurants: $restaurants, failureOption: $failureOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RestaurantFavoriteActorState &&
            const DeepCollectionEquality()
                .equals(other.restaurants, restaurants) &&
            const DeepCollectionEquality()
                .equals(other.failureOption, failureOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(restaurants),
      const DeepCollectionEquality().hash(failureOption));

  @JsonKey(ignore: true)
  @override
  _$$_RestaurantFavoriteActorStateCopyWith<_$_RestaurantFavoriteActorState>
      get copyWith => __$$_RestaurantFavoriteActorStateCopyWithImpl<
          _$_RestaurantFavoriteActorState>(this, _$identity);
}

abstract class _RestaurantFavoriteActorState
    implements RestaurantFavoriteActorState {
  const factory _RestaurantFavoriteActorState(
          {required final KtList<Restaurant> restaurants,
          required final Option<RestaurantFailure> failureOption}) =
      _$_RestaurantFavoriteActorState;

  @override
  KtList<Restaurant> get restaurants;
  @override
  Option<RestaurantFailure> get failureOption;
  @override
  @JsonKey(ignore: true)
  _$$_RestaurantFavoriteActorStateCopyWith<_$_RestaurantFavoriteActorState>
      get copyWith => throw _privateConstructorUsedError;
}
