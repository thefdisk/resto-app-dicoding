// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'restaurant_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RestaurantDto _$RestaurantDtoFromJson(Map<String, dynamic> json) {
  return _RestaurantDto.fromJson(json);
}

/// @nodoc
mixin _$RestaurantDto {
  @JsonKey(name: 'id')
  String get restaurantId => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'pictureId')
  String get pictureId => throw _privateConstructorUsedError;
  @JsonKey(name: 'city')
  String get city => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating')
  double get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'categories')
  List<CategoryDto>? get categories => throw _privateConstructorUsedError;
  @JsonKey(name: 'menus')
  MenuDto? get menus => throw _privateConstructorUsedError;
  @JsonKey(name: 'customerReviews')
  List<ReviewDto>? get reviews => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RestaurantDtoCopyWith<RestaurantDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantDtoCopyWith<$Res> {
  factory $RestaurantDtoCopyWith(
          RestaurantDto value, $Res Function(RestaurantDto) then) =
      _$RestaurantDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') String restaurantId,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'pictureId') String pictureId,
      @JsonKey(name: 'city') String city,
      @JsonKey(name: 'rating') double rating,
      @JsonKey(name: 'address') String? address,
      @JsonKey(name: 'categories') List<CategoryDto>? categories,
      @JsonKey(name: 'menus') MenuDto? menus,
      @JsonKey(name: 'customerReviews') List<ReviewDto>? reviews});

  $MenuDtoCopyWith<$Res>? get menus;
}

/// @nodoc
class _$RestaurantDtoCopyWithImpl<$Res>
    implements $RestaurantDtoCopyWith<$Res> {
  _$RestaurantDtoCopyWithImpl(this._value, this._then);

  final RestaurantDto _value;
  // ignore: unused_field
  final $Res Function(RestaurantDto) _then;

  @override
  $Res call({
    Object? restaurantId = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? pictureId = freezed,
    Object? city = freezed,
    Object? rating = freezed,
    Object? address = freezed,
    Object? categories = freezed,
    Object? menus = freezed,
    Object? reviews = freezed,
  }) {
    return _then(_value.copyWith(
      restaurantId: restaurantId == freezed
          ? _value.restaurantId
          : restaurantId // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      pictureId: pictureId == freezed
          ? _value.pictureId
          : pictureId // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryDto>?,
      menus: menus == freezed
          ? _value.menus
          : menus // ignore: cast_nullable_to_non_nullable
              as MenuDto?,
      reviews: reviews == freezed
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<ReviewDto>?,
    ));
  }

  @override
  $MenuDtoCopyWith<$Res>? get menus {
    if (_value.menus == null) {
      return null;
    }

    return $MenuDtoCopyWith<$Res>(_value.menus!, (value) {
      return _then(_value.copyWith(menus: value));
    });
  }
}

/// @nodoc
abstract class _$$_RestaurantDtoCopyWith<$Res>
    implements $RestaurantDtoCopyWith<$Res> {
  factory _$$_RestaurantDtoCopyWith(
          _$_RestaurantDto value, $Res Function(_$_RestaurantDto) then) =
      __$$_RestaurantDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') String restaurantId,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'pictureId') String pictureId,
      @JsonKey(name: 'city') String city,
      @JsonKey(name: 'rating') double rating,
      @JsonKey(name: 'address') String? address,
      @JsonKey(name: 'categories') List<CategoryDto>? categories,
      @JsonKey(name: 'menus') MenuDto? menus,
      @JsonKey(name: 'customerReviews') List<ReviewDto>? reviews});

  @override
  $MenuDtoCopyWith<$Res>? get menus;
}

/// @nodoc
class __$$_RestaurantDtoCopyWithImpl<$Res>
    extends _$RestaurantDtoCopyWithImpl<$Res>
    implements _$$_RestaurantDtoCopyWith<$Res> {
  __$$_RestaurantDtoCopyWithImpl(
      _$_RestaurantDto _value, $Res Function(_$_RestaurantDto) _then)
      : super(_value, (v) => _then(v as _$_RestaurantDto));

  @override
  _$_RestaurantDto get _value => super._value as _$_RestaurantDto;

  @override
  $Res call({
    Object? restaurantId = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? pictureId = freezed,
    Object? city = freezed,
    Object? rating = freezed,
    Object? address = freezed,
    Object? categories = freezed,
    Object? menus = freezed,
    Object? reviews = freezed,
  }) {
    return _then(_$_RestaurantDto(
      restaurantId: restaurantId == freezed
          ? _value.restaurantId
          : restaurantId // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      pictureId: pictureId == freezed
          ? _value.pictureId
          : pictureId // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      categories: categories == freezed
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryDto>?,
      menus: menus == freezed
          ? _value.menus
          : menus // ignore: cast_nullable_to_non_nullable
              as MenuDto?,
      reviews: reviews == freezed
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<ReviewDto>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RestaurantDto extends _RestaurantDto {
  const _$_RestaurantDto(
      {@JsonKey(name: 'id') required this.restaurantId,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'description') required this.description,
      @JsonKey(name: 'pictureId') required this.pictureId,
      @JsonKey(name: 'city') required this.city,
      @JsonKey(name: 'rating') required this.rating,
      @JsonKey(name: 'address') this.address,
      @JsonKey(name: 'categories') final List<CategoryDto>? categories,
      @JsonKey(name: 'menus') this.menus,
      @JsonKey(name: 'customerReviews') final List<ReviewDto>? reviews})
      : _categories = categories,
        _reviews = reviews,
        super._();

  factory _$_RestaurantDto.fromJson(Map<String, dynamic> json) =>
      _$$_RestaurantDtoFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String restaurantId;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(name: 'pictureId')
  final String pictureId;
  @override
  @JsonKey(name: 'city')
  final String city;
  @override
  @JsonKey(name: 'rating')
  final double rating;
  @override
  @JsonKey(name: 'address')
  final String? address;
  final List<CategoryDto>? _categories;
  @override
  @JsonKey(name: 'categories')
  List<CategoryDto>? get categories {
    final value = _categories;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'menus')
  final MenuDto? menus;
  final List<ReviewDto>? _reviews;
  @override
  @JsonKey(name: 'customerReviews')
  List<ReviewDto>? get reviews {
    final value = _reviews;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RestaurantDto(restaurantId: $restaurantId, name: $name, description: $description, pictureId: $pictureId, city: $city, rating: $rating, address: $address, categories: $categories, menus: $menus, reviews: $reviews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RestaurantDto &&
            const DeepCollectionEquality()
                .equals(other.restaurantId, restaurantId) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.pictureId, pictureId) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality().equals(other.rating, rating) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality().equals(other.menus, menus) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(restaurantId),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(pictureId),
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(rating),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(menus),
      const DeepCollectionEquality().hash(_reviews));

  @JsonKey(ignore: true)
  @override
  _$$_RestaurantDtoCopyWith<_$_RestaurantDto> get copyWith =>
      __$$_RestaurantDtoCopyWithImpl<_$_RestaurantDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RestaurantDtoToJson(
      this,
    );
  }
}

abstract class _RestaurantDto extends RestaurantDto {
  const factory _RestaurantDto(
          {@JsonKey(name: 'id') required final String restaurantId,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'description') required final String description,
          @JsonKey(name: 'pictureId') required final String pictureId,
          @JsonKey(name: 'city') required final String city,
          @JsonKey(name: 'rating') required final double rating,
          @JsonKey(name: 'address') final String? address,
          @JsonKey(name: 'categories') final List<CategoryDto>? categories,
          @JsonKey(name: 'menus') final MenuDto? menus,
          @JsonKey(name: 'customerReviews') final List<ReviewDto>? reviews}) =
      _$_RestaurantDto;
  const _RestaurantDto._() : super._();

  factory _RestaurantDto.fromJson(Map<String, dynamic> json) =
      _$_RestaurantDto.fromJson;

  @override
  @JsonKey(name: 'id')
  String get restaurantId;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'description')
  String get description;
  @override
  @JsonKey(name: 'pictureId')
  String get pictureId;
  @override
  @JsonKey(name: 'city')
  String get city;
  @override
  @JsonKey(name: 'rating')
  double get rating;
  @override
  @JsonKey(name: 'address')
  String? get address;
  @override
  @JsonKey(name: 'categories')
  List<CategoryDto>? get categories;
  @override
  @JsonKey(name: 'menus')
  MenuDto? get menus;
  @override
  @JsonKey(name: 'customerReviews')
  List<ReviewDto>? get reviews;
  @override
  @JsonKey(ignore: true)
  _$$_RestaurantDtoCopyWith<_$_RestaurantDto> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryDto _$CategoryDtoFromJson(Map<String, dynamic> json) {
  return _CategoryDto.fromJson(json);
}

/// @nodoc
mixin _$CategoryDto {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryDtoCopyWith<CategoryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryDtoCopyWith<$Res> {
  factory $CategoryDtoCopyWith(
          CategoryDto value, $Res Function(CategoryDto) then) =
      _$CategoryDtoCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'name') String name});
}

/// @nodoc
class _$CategoryDtoCopyWithImpl<$Res> implements $CategoryDtoCopyWith<$Res> {
  _$CategoryDtoCopyWithImpl(this._value, this._then);

  final CategoryDto _value;
  // ignore: unused_field
  final $Res Function(CategoryDto) _then;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_CategoryDtoCopyWith<$Res>
    implements $CategoryDtoCopyWith<$Res> {
  factory _$$_CategoryDtoCopyWith(
          _$_CategoryDto value, $Res Function(_$_CategoryDto) then) =
      __$$_CategoryDtoCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'name') String name});
}

/// @nodoc
class __$$_CategoryDtoCopyWithImpl<$Res> extends _$CategoryDtoCopyWithImpl<$Res>
    implements _$$_CategoryDtoCopyWith<$Res> {
  __$$_CategoryDtoCopyWithImpl(
      _$_CategoryDto _value, $Res Function(_$_CategoryDto) _then)
      : super(_value, (v) => _then(v as _$_CategoryDto));

  @override
  _$_CategoryDto get _value => super._value as _$_CategoryDto;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$_CategoryDto(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoryDto extends _CategoryDto {
  const _$_CategoryDto({@JsonKey(name: 'name') required this.name}) : super._();

  factory _$_CategoryDto.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryDtoFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;

  @override
  String toString() {
    return 'CategoryDto(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryDto &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_CategoryDtoCopyWith<_$_CategoryDto> get copyWith =>
      __$$_CategoryDtoCopyWithImpl<_$_CategoryDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryDtoToJson(
      this,
    );
  }
}

abstract class _CategoryDto extends CategoryDto {
  const factory _CategoryDto(
      {@JsonKey(name: 'name') required final String name}) = _$_CategoryDto;
  const _CategoryDto._() : super._();

  factory _CategoryDto.fromJson(Map<String, dynamic> json) =
      _$_CategoryDto.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryDtoCopyWith<_$_CategoryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

MenuDto _$MenuDtoFromJson(Map<String, dynamic> json) {
  return _MenuDto.fromJson(json);
}

/// @nodoc
mixin _$MenuDto {
  @JsonKey(name: 'foods')
  List<FoodDto> get foods => throw _privateConstructorUsedError;
  @JsonKey(name: 'drinks')
  List<DrinkDto> get drinks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MenuDtoCopyWith<MenuDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuDtoCopyWith<$Res> {
  factory $MenuDtoCopyWith(MenuDto value, $Res Function(MenuDto) then) =
      _$MenuDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'foods') List<FoodDto> foods,
      @JsonKey(name: 'drinks') List<DrinkDto> drinks});
}

/// @nodoc
class _$MenuDtoCopyWithImpl<$Res> implements $MenuDtoCopyWith<$Res> {
  _$MenuDtoCopyWithImpl(this._value, this._then);

  final MenuDto _value;
  // ignore: unused_field
  final $Res Function(MenuDto) _then;

  @override
  $Res call({
    Object? foods = freezed,
    Object? drinks = freezed,
  }) {
    return _then(_value.copyWith(
      foods: foods == freezed
          ? _value.foods
          : foods // ignore: cast_nullable_to_non_nullable
              as List<FoodDto>,
      drinks: drinks == freezed
          ? _value.drinks
          : drinks // ignore: cast_nullable_to_non_nullable
              as List<DrinkDto>,
    ));
  }
}

/// @nodoc
abstract class _$$_MenuDtoCopyWith<$Res> implements $MenuDtoCopyWith<$Res> {
  factory _$$_MenuDtoCopyWith(
          _$_MenuDto value, $Res Function(_$_MenuDto) then) =
      __$$_MenuDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'foods') List<FoodDto> foods,
      @JsonKey(name: 'drinks') List<DrinkDto> drinks});
}

/// @nodoc
class __$$_MenuDtoCopyWithImpl<$Res> extends _$MenuDtoCopyWithImpl<$Res>
    implements _$$_MenuDtoCopyWith<$Res> {
  __$$_MenuDtoCopyWithImpl(_$_MenuDto _value, $Res Function(_$_MenuDto) _then)
      : super(_value, (v) => _then(v as _$_MenuDto));

  @override
  _$_MenuDto get _value => super._value as _$_MenuDto;

  @override
  $Res call({
    Object? foods = freezed,
    Object? drinks = freezed,
  }) {
    return _then(_$_MenuDto(
      foods: foods == freezed
          ? _value._foods
          : foods // ignore: cast_nullable_to_non_nullable
              as List<FoodDto>,
      drinks: drinks == freezed
          ? _value._drinks
          : drinks // ignore: cast_nullable_to_non_nullable
              as List<DrinkDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MenuDto extends _MenuDto {
  const _$_MenuDto(
      {@JsonKey(name: 'foods') required final List<FoodDto> foods,
      @JsonKey(name: 'drinks') required final List<DrinkDto> drinks})
      : _foods = foods,
        _drinks = drinks,
        super._();

  factory _$_MenuDto.fromJson(Map<String, dynamic> json) =>
      _$$_MenuDtoFromJson(json);

  final List<FoodDto> _foods;
  @override
  @JsonKey(name: 'foods')
  List<FoodDto> get foods {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_foods);
  }

  final List<DrinkDto> _drinks;
  @override
  @JsonKey(name: 'drinks')
  List<DrinkDto> get drinks {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_drinks);
  }

  @override
  String toString() {
    return 'MenuDto(foods: $foods, drinks: $drinks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MenuDto &&
            const DeepCollectionEquality().equals(other._foods, _foods) &&
            const DeepCollectionEquality().equals(other._drinks, _drinks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_foods),
      const DeepCollectionEquality().hash(_drinks));

  @JsonKey(ignore: true)
  @override
  _$$_MenuDtoCopyWith<_$_MenuDto> get copyWith =>
      __$$_MenuDtoCopyWithImpl<_$_MenuDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MenuDtoToJson(
      this,
    );
  }
}

abstract class _MenuDto extends MenuDto {
  const factory _MenuDto(
          {@JsonKey(name: 'foods') required final List<FoodDto> foods,
          @JsonKey(name: 'drinks') required final List<DrinkDto> drinks}) =
      _$_MenuDto;
  const _MenuDto._() : super._();

  factory _MenuDto.fromJson(Map<String, dynamic> json) = _$_MenuDto.fromJson;

  @override
  @JsonKey(name: 'foods')
  List<FoodDto> get foods;
  @override
  @JsonKey(name: 'drinks')
  List<DrinkDto> get drinks;
  @override
  @JsonKey(ignore: true)
  _$$_MenuDtoCopyWith<_$_MenuDto> get copyWith =>
      throw _privateConstructorUsedError;
}

FoodDto _$FoodDtoFromJson(Map<String, dynamic> json) {
  return _FoodDto.fromJson(json);
}

/// @nodoc
mixin _$FoodDto {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FoodDtoCopyWith<FoodDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodDtoCopyWith<$Res> {
  factory $FoodDtoCopyWith(FoodDto value, $Res Function(FoodDto) then) =
      _$FoodDtoCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'name') String name});
}

/// @nodoc
class _$FoodDtoCopyWithImpl<$Res> implements $FoodDtoCopyWith<$Res> {
  _$FoodDtoCopyWithImpl(this._value, this._then);

  final FoodDto _value;
  // ignore: unused_field
  final $Res Function(FoodDto) _then;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_FoodDtoCopyWith<$Res> implements $FoodDtoCopyWith<$Res> {
  factory _$$_FoodDtoCopyWith(
          _$_FoodDto value, $Res Function(_$_FoodDto) then) =
      __$$_FoodDtoCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'name') String name});
}

/// @nodoc
class __$$_FoodDtoCopyWithImpl<$Res> extends _$FoodDtoCopyWithImpl<$Res>
    implements _$$_FoodDtoCopyWith<$Res> {
  __$$_FoodDtoCopyWithImpl(_$_FoodDto _value, $Res Function(_$_FoodDto) _then)
      : super(_value, (v) => _then(v as _$_FoodDto));

  @override
  _$_FoodDto get _value => super._value as _$_FoodDto;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$_FoodDto(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FoodDto extends _FoodDto {
  const _$_FoodDto({@JsonKey(name: 'name') required this.name}) : super._();

  factory _$_FoodDto.fromJson(Map<String, dynamic> json) =>
      _$$_FoodDtoFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;

  @override
  String toString() {
    return 'FoodDto(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FoodDto &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_FoodDtoCopyWith<_$_FoodDto> get copyWith =>
      __$$_FoodDtoCopyWithImpl<_$_FoodDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FoodDtoToJson(
      this,
    );
  }
}

abstract class _FoodDto extends FoodDto {
  const factory _FoodDto({@JsonKey(name: 'name') required final String name}) =
      _$_FoodDto;
  const _FoodDto._() : super._();

  factory _FoodDto.fromJson(Map<String, dynamic> json) = _$_FoodDto.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_FoodDtoCopyWith<_$_FoodDto> get copyWith =>
      throw _privateConstructorUsedError;
}

DrinkDto _$DrinkDtoFromJson(Map<String, dynamic> json) {
  return _DrinkDto.fromJson(json);
}

/// @nodoc
mixin _$DrinkDto {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DrinkDtoCopyWith<DrinkDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrinkDtoCopyWith<$Res> {
  factory $DrinkDtoCopyWith(DrinkDto value, $Res Function(DrinkDto) then) =
      _$DrinkDtoCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'name') String name});
}

/// @nodoc
class _$DrinkDtoCopyWithImpl<$Res> implements $DrinkDtoCopyWith<$Res> {
  _$DrinkDtoCopyWithImpl(this._value, this._then);

  final DrinkDto _value;
  // ignore: unused_field
  final $Res Function(DrinkDto) _then;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_DrinkDtoCopyWith<$Res> implements $DrinkDtoCopyWith<$Res> {
  factory _$$_DrinkDtoCopyWith(
          _$_DrinkDto value, $Res Function(_$_DrinkDto) then) =
      __$$_DrinkDtoCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'name') String name});
}

/// @nodoc
class __$$_DrinkDtoCopyWithImpl<$Res> extends _$DrinkDtoCopyWithImpl<$Res>
    implements _$$_DrinkDtoCopyWith<$Res> {
  __$$_DrinkDtoCopyWithImpl(
      _$_DrinkDto _value, $Res Function(_$_DrinkDto) _then)
      : super(_value, (v) => _then(v as _$_DrinkDto));

  @override
  _$_DrinkDto get _value => super._value as _$_DrinkDto;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$_DrinkDto(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DrinkDto extends _DrinkDto {
  const _$_DrinkDto({@JsonKey(name: 'name') required this.name}) : super._();

  factory _$_DrinkDto.fromJson(Map<String, dynamic> json) =>
      _$$_DrinkDtoFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;

  @override
  String toString() {
    return 'DrinkDto(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DrinkDto &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_DrinkDtoCopyWith<_$_DrinkDto> get copyWith =>
      __$$_DrinkDtoCopyWithImpl<_$_DrinkDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DrinkDtoToJson(
      this,
    );
  }
}

abstract class _DrinkDto extends DrinkDto {
  const factory _DrinkDto({@JsonKey(name: 'name') required final String name}) =
      _$_DrinkDto;
  const _DrinkDto._() : super._();

  factory _DrinkDto.fromJson(Map<String, dynamic> json) = _$_DrinkDto.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_DrinkDtoCopyWith<_$_DrinkDto> get copyWith =>
      throw _privateConstructorUsedError;
}

ReviewDto _$ReviewDtoFromJson(Map<String, dynamic> json) {
  return _ReviewDto.fromJson(json);
}

/// @nodoc
mixin _$ReviewDto {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'review')
  String get review => throw _privateConstructorUsedError;
  @JsonKey(name: 'date')
  String get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewDtoCopyWith<ReviewDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewDtoCopyWith<$Res> {
  factory $ReviewDtoCopyWith(ReviewDto value, $Res Function(ReviewDto) then) =
      _$ReviewDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'review') String review,
      @JsonKey(name: 'date') String date});
}

/// @nodoc
class _$ReviewDtoCopyWithImpl<$Res> implements $ReviewDtoCopyWith<$Res> {
  _$ReviewDtoCopyWithImpl(this._value, this._then);

  final ReviewDto _value;
  // ignore: unused_field
  final $Res Function(ReviewDto) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? review = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      review: review == freezed
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ReviewDtoCopyWith<$Res> implements $ReviewDtoCopyWith<$Res> {
  factory _$$_ReviewDtoCopyWith(
          _$_ReviewDto value, $Res Function(_$_ReviewDto) then) =
      __$$_ReviewDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'review') String review,
      @JsonKey(name: 'date') String date});
}

/// @nodoc
class __$$_ReviewDtoCopyWithImpl<$Res> extends _$ReviewDtoCopyWithImpl<$Res>
    implements _$$_ReviewDtoCopyWith<$Res> {
  __$$_ReviewDtoCopyWithImpl(
      _$_ReviewDto _value, $Res Function(_$_ReviewDto) _then)
      : super(_value, (v) => _then(v as _$_ReviewDto));

  @override
  _$_ReviewDto get _value => super._value as _$_ReviewDto;

  @override
  $Res call({
    Object? name = freezed,
    Object? review = freezed,
    Object? date = freezed,
  }) {
    return _then(_$_ReviewDto(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      review: review == freezed
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReviewDto extends _ReviewDto {
  const _$_ReviewDto(
      {@JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'review') required this.review,
      @JsonKey(name: 'date') required this.date})
      : super._();

  factory _$_ReviewDto.fromJson(Map<String, dynamic> json) =>
      _$$_ReviewDtoFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'review')
  final String review;
  @override
  @JsonKey(name: 'date')
  final String date;

  @override
  String toString() {
    return 'ReviewDto(name: $name, review: $review, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReviewDto &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.review, review) &&
            const DeepCollectionEquality().equals(other.date, date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(review),
      const DeepCollectionEquality().hash(date));

  @JsonKey(ignore: true)
  @override
  _$$_ReviewDtoCopyWith<_$_ReviewDto> get copyWith =>
      __$$_ReviewDtoCopyWithImpl<_$_ReviewDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReviewDtoToJson(
      this,
    );
  }
}

abstract class _ReviewDto extends ReviewDto {
  const factory _ReviewDto(
      {@JsonKey(name: 'name') required final String name,
      @JsonKey(name: 'review') required final String review,
      @JsonKey(name: 'date') required final String date}) = _$_ReviewDto;
  const _ReviewDto._() : super._();

  factory _ReviewDto.fromJson(Map<String, dynamic> json) =
      _$_ReviewDto.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'review')
  String get review;
  @override
  @JsonKey(name: 'date')
  String get date;
  @override
  @JsonKey(ignore: true)
  _$$_ReviewDtoCopyWith<_$_ReviewDto> get copyWith =>
      throw _privateConstructorUsedError;
}
