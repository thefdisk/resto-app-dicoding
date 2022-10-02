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
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;
import 'package:resto_app_dicoding/domain/core/value_objects.dart' as _i7;
import 'package:resto_app_dicoding/presentation/pages/main/main_page.dart'
    as _i2;
import 'package:resto_app_dicoding/presentation/pages/restaurant/pages/detail/detail_page.dart'
    as _i3;
import 'package:resto_app_dicoding/presentation/pages/restaurant/pages/search/search_page.dart'
    as _i4;
import 'package:resto_app_dicoding/presentation/pages/splash/splash_page.dart'
    as _i1;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.SplashPage(),
      );
    },
    MainRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i5.WrappedRoute(child: const _i2.MainPage()),
      );
    },
    RestaurantDetailRoute.name: (routeData) {
      final args = routeData.argsAs<RestaurantDetailRouteArgs>();
      return _i5.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i5.WrappedRoute(
            child: _i3.RestaurantDetailPage(
          key: args.key,
          restaurantId: args.restaurantId,
        )),
      );
    },
    RestaurantSearchRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i5.WrappedRoute(child: const _i4.RestaurantSearchPage()),
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        _i5.RouteConfig(
          MainRoute.name,
          path: '/main-page',
        ),
        _i5.RouteConfig(
          RestaurantDetailRoute.name,
          path: '/restaurant-detail-page',
        ),
        _i5.RouteConfig(
          RestaurantSearchRoute.name,
          path: '/restaurant-search-page',
        ),
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i5.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.MainPage]
class MainRoute extends _i5.PageRouteInfo<void> {
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
    extends _i5.PageRouteInfo<RestaurantDetailRouteArgs> {
  RestaurantDetailRoute({
    _i6.Key? key,
    required _i7.GeneratedId restaurantId,
  }) : super(
          RestaurantDetailRoute.name,
          path: '/restaurant-detail-page',
          args: RestaurantDetailRouteArgs(
            key: key,
            restaurantId: restaurantId,
          ),
        );

  static const String name = 'RestaurantDetailRoute';
}

class RestaurantDetailRouteArgs {
  const RestaurantDetailRouteArgs({
    this.key,
    required this.restaurantId,
  });

  final _i6.Key? key;

  final _i7.GeneratedId restaurantId;

  @override
  String toString() {
    return 'RestaurantDetailRouteArgs{key: $key, restaurantId: $restaurantId}';
  }
}

/// generated route for
/// [_i4.RestaurantSearchPage]
class RestaurantSearchRoute extends _i5.PageRouteInfo<void> {
  const RestaurantSearchRoute()
      : super(
          RestaurantSearchRoute.name,
          path: '/restaurant-search-page',
        );

  static const String name = 'RestaurantSearchRoute';
}
