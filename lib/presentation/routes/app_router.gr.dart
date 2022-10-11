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
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;
import 'package:resto_app_dicoding/domain/core/value_objects.dart' as _i10;
import 'package:resto_app_dicoding/presentation/pages/main/main_page.dart'
    as _i2;
import 'package:resto_app_dicoding/presentation/pages/restaurant/pages/detail/detail_page.dart'
    as _i3;
import 'package:resto_app_dicoding/presentation/pages/restaurant/pages/detail/pages/restaurant_description_tab.dart'
    as _i6;
import 'package:resto_app_dicoding/presentation/pages/restaurant/pages/detail/pages/restaurant_menus_tab.dart'
    as _i5;
import 'package:resto_app_dicoding/presentation/pages/restaurant/pages/detail/pages/restaurant_reviews_tab.dart'
    as _i7;
import 'package:resto_app_dicoding/presentation/pages/restaurant/pages/search/search_page.dart'
    as _i4;
import 'package:resto_app_dicoding/presentation/pages/splash/splash_page.dart'
    as _i1;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.SplashPage(),
      );
    },
    MainRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i8.WrappedRoute(child: const _i2.MainPage()),
      );
    },
    RestaurantDetailRoute.name: (routeData) {
      final args = routeData.argsAs<RestaurantDetailRouteArgs>();
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i8.WrappedRoute(
            child: _i3.RestaurantDetailPage(
          key: args.key,
          restaurantId: args.restaurantId,
        )),
      );
    },
    RestaurantSearchRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i8.WrappedRoute(child: const _i4.RestaurantSearchPage()),
      );
    },
    RestaurantMenusRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i5.RestaurantMenusPage(),
      );
    },
    RestaurantDescriptionRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i6.RestaurantDescriptionPage(),
      );
    },
    RestaurantReviewsRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i7.RestaurantReviewsPage(),
      );
    },
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        _i8.RouteConfig(
          MainRoute.name,
          path: '/main-page',
        ),
        _i8.RouteConfig(
          RestaurantDetailRoute.name,
          path: '/restaurant-detail-page',
          children: [
            _i8.RouteConfig(
              RestaurantMenusRoute.name,
              path: '',
              parent: RestaurantDetailRoute.name,
            ),
            _i8.RouteConfig(
              RestaurantDescriptionRoute.name,
              path: 'restaurant-description-page',
              parent: RestaurantDetailRoute.name,
            ),
            _i8.RouteConfig(
              RestaurantReviewsRoute.name,
              path: 'restaurant-reviews-page',
              parent: RestaurantDetailRoute.name,
            ),
          ],
        ),
        _i8.RouteConfig(
          RestaurantSearchRoute.name,
          path: '/restaurant-search-page',
        ),
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i8.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.MainPage]
class MainRoute extends _i8.PageRouteInfo<void> {
  const MainRoute()
      : super(
          MainRoute.name,
          path: '/main-page',
        );

  static const String name = 'MainRoute';
}

/// generated route for
/// [_i3.RestaurantDetailPage]
class RestaurantDetailRoute
    extends _i8.PageRouteInfo<RestaurantDetailRouteArgs> {
  RestaurantDetailRoute({
    _i9.Key? key,
    required _i10.GeneratedId restaurantId,
    List<_i8.PageRouteInfo>? children,
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

  final _i9.Key? key;

  final _i10.GeneratedId restaurantId;

  @override
  String toString() {
    return 'RestaurantDetailRouteArgs{key: $key, restaurantId: $restaurantId}';
  }
}

/// generated route for
/// [_i4.RestaurantSearchPage]
class RestaurantSearchRoute extends _i8.PageRouteInfo<void> {
  const RestaurantSearchRoute()
      : super(
          RestaurantSearchRoute.name,
          path: '/restaurant-search-page',
        );

  static const String name = 'RestaurantSearchRoute';
}

/// generated route for
/// [_i5.RestaurantMenusPage]
class RestaurantMenusRoute extends _i8.PageRouteInfo<void> {
  const RestaurantMenusRoute()
      : super(
          RestaurantMenusRoute.name,
          path: '',
        );

  static const String name = 'RestaurantMenusRoute';
}

/// generated route for
/// [_i6.RestaurantDescriptionPage]
class RestaurantDescriptionRoute extends _i8.PageRouteInfo<void> {
  const RestaurantDescriptionRoute()
      : super(
          RestaurantDescriptionRoute.name,
          path: 'restaurant-description-page',
        );

  static const String name = 'RestaurantDescriptionRoute';
}

/// generated route for
/// [_i7.RestaurantReviewsPage]
class RestaurantReviewsRoute extends _i8.PageRouteInfo<void> {
  const RestaurantReviewsRoute()
      : super(
          RestaurantReviewsRoute.name,
          path: 'restaurant-reviews-page',
        );

  static const String name = 'RestaurantReviewsRoute';
}
