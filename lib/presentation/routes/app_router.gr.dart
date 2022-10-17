// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:flutter/material.dart' as _i12;
import 'package:resto_app_dicoding/domain/core/value_objects.dart' as _i13;
import 'package:resto_app_dicoding/presentation/pages/main/main_page.dart'
    as _i2;
import 'package:resto_app_dicoding/presentation/pages/main/pages/favorite/favorite_page.dart'
    as _i6;
import 'package:resto_app_dicoding/presentation/pages/main/pages/home/home_page.dart'
    as _i5;
import 'package:resto_app_dicoding/presentation/pages/main/pages/setting/setting_page.dart'
    as _i7;
import 'package:resto_app_dicoding/presentation/pages/restaurant/pages/detail/detail_page.dart'
    as _i3;
import 'package:resto_app_dicoding/presentation/pages/restaurant/pages/detail/pages/restaurant_description_tab.dart'
    as _i9;
import 'package:resto_app_dicoding/presentation/pages/restaurant/pages/detail/pages/restaurant_menus_tab.dart'
    as _i8;
import 'package:resto_app_dicoding/presentation/pages/restaurant/pages/detail/pages/restaurant_reviews_tab.dart'
    as _i10;
import 'package:resto_app_dicoding/presentation/pages/restaurant/pages/search/search_page.dart'
    as _i4;
import 'package:resto_app_dicoding/presentation/pages/splash/splash_page.dart'
    as _i1;

class AppRouter extends _i11.RootStackRouter {
  AppRouter([_i12.GlobalKey<_i12.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i11.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.SplashPage(),
      );
    },
    MainRoute.name: (routeData) {
      return _i11.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i11.WrappedRoute(child: const _i2.MainPage()),
      );
    },
    RestaurantDetailRoute.name: (routeData) {
      final args = routeData.argsAs<RestaurantDetailRouteArgs>();
      return _i11.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i11.WrappedRoute(
            child: _i3.RestaurantDetailPage(
          key: args.key,
          restaurantId: args.restaurantId,
        )),
      );
    },
    RestaurantSearchRoute.name: (routeData) {
      return _i11.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i11.WrappedRoute(child: const _i4.RestaurantSearchPage()),
      );
    },
    HomeRoute.name: (routeData) {
      return _i11.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i5.HomePage(),
      );
    },
    FavoriteRoute.name: (routeData) {
      return _i11.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i6.FavoritePage(),
      );
    },
    SettingRoute.name: (routeData) {
      return _i11.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i7.SettingPage(),
      );
    },
    RestaurantMenusRoute.name: (routeData) {
      return _i11.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i8.RestaurantMenusPage(),
      );
    },
    RestaurantDescriptionRoute.name: (routeData) {
      return _i11.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i9.RestaurantDescriptionPage(),
      );
    },
    RestaurantReviewsRoute.name: (routeData) {
      return _i11.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i10.RestaurantReviewsPage(),
      );
    },
  };

  @override
  List<_i11.RouteConfig> get routes => [
        _i11.RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        _i11.RouteConfig(
          MainRoute.name,
          path: '/main-page',
          children: [
            _i11.RouteConfig(
              HomeRoute.name,
              path: '',
              parent: MainRoute.name,
            ),
            _i11.RouteConfig(
              FavoriteRoute.name,
              path: 'favorite-page',
              parent: MainRoute.name,
            ),
            _i11.RouteConfig(
              SettingRoute.name,
              path: 'setting-page',
              parent: MainRoute.name,
            ),
          ],
        ),
        _i11.RouteConfig(
          RestaurantDetailRoute.name,
          path: '/restaurant-detail-page',
          children: [
            _i11.RouteConfig(
              RestaurantMenusRoute.name,
              path: '',
              parent: RestaurantDetailRoute.name,
            ),
            _i11.RouteConfig(
              RestaurantDescriptionRoute.name,
              path: 'restaurant-description-page',
              parent: RestaurantDetailRoute.name,
            ),
            _i11.RouteConfig(
              RestaurantReviewsRoute.name,
              path: 'restaurant-reviews-page',
              parent: RestaurantDetailRoute.name,
            ),
          ],
        ),
        _i11.RouteConfig(
          RestaurantSearchRoute.name,
          path: '/restaurant-search-page',
        ),
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i11.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.MainPage]
class MainRoute extends _i11.PageRouteInfo<void> {
  const MainRoute({List<_i11.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          path: '/main-page',
          initialChildren: children,
        );

  static const String name = 'MainRoute';
}

/// generated route for
/// [_i3.RestaurantDetailPage]
class RestaurantDetailRoute
    extends _i11.PageRouteInfo<RestaurantDetailRouteArgs> {
  RestaurantDetailRoute({
    _i12.Key? key,
    required _i13.GeneratedId restaurantId,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          RestaurantDetailRoute.name,
          path: '/restaurant-detail-page',
          args: RestaurantDetailRouteArgs(
            key: key,
            restaurantId: restaurantId,
          ),
          initialChildren: children,
        );

  static const String name = 'RestaurantDetailRoute';
}

class RestaurantDetailRouteArgs {
  const RestaurantDetailRouteArgs({
    this.key,
    required this.restaurantId,
  });

  final _i12.Key? key;

  final _i13.GeneratedId restaurantId;

  @override
  String toString() {
    return 'RestaurantDetailRouteArgs{key: $key, restaurantId: $restaurantId}';
  }
}

/// generated route for
/// [_i4.RestaurantSearchPage]
class RestaurantSearchRoute extends _i11.PageRouteInfo<void> {
  const RestaurantSearchRoute()
      : super(
          RestaurantSearchRoute.name,
          path: '/restaurant-search-page',
        );

  static const String name = 'RestaurantSearchRoute';
}

/// generated route for
/// [_i5.HomePage]
class HomeRoute extends _i11.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i6.FavoritePage]
class FavoriteRoute extends _i11.PageRouteInfo<void> {
  const FavoriteRoute()
      : super(
          FavoriteRoute.name,
          path: 'favorite-page',
        );

  static const String name = 'FavoriteRoute';
}

/// generated route for
/// [_i7.SettingPage]
class SettingRoute extends _i11.PageRouteInfo<void> {
  const SettingRoute()
      : super(
          SettingRoute.name,
          path: 'setting-page',
        );

  static const String name = 'SettingRoute';
}

/// generated route for
/// [_i8.RestaurantMenusPage]
class RestaurantMenusRoute extends _i11.PageRouteInfo<void> {
  const RestaurantMenusRoute()
      : super(
          RestaurantMenusRoute.name,
          path: '',
        );

  static const String name = 'RestaurantMenusRoute';
}

/// generated route for
/// [_i9.RestaurantDescriptionPage]
class RestaurantDescriptionRoute extends _i11.PageRouteInfo<void> {
  const RestaurantDescriptionRoute()
      : super(
          RestaurantDescriptionRoute.name,
          path: 'restaurant-description-page',
        );

  static const String name = 'RestaurantDescriptionRoute';
}

/// generated route for
/// [_i10.RestaurantReviewsPage]
class RestaurantReviewsRoute extends _i11.PageRouteInfo<void> {
  const RestaurantReviewsRoute()
      : super(
          RestaurantReviewsRoute.name,
          path: 'restaurant-reviews-page',
        );

  static const String name = 'RestaurantReviewsRoute';
}
