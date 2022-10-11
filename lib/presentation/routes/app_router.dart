import 'package:auto_route/auto_route.dart';
import 'package:resto_app_dicoding/presentation/pages/main/main_page.dart';
import 'package:resto_app_dicoding/presentation/pages/restaurant/pages/detail/detail_page.dart';
import 'package:resto_app_dicoding/presentation/pages/restaurant/pages/detail/pages/restaurant_description_tab.dart';
import 'package:resto_app_dicoding/presentation/pages/restaurant/pages/detail/pages/restaurant_menus_tab.dart';
import 'package:resto_app_dicoding/presentation/pages/restaurant/pages/detail/pages/restaurant_reviews_tab.dart';
import 'package:resto_app_dicoding/presentation/pages/restaurant/pages/search/search_page.dart';
import 'package:resto_app_dicoding/presentation/pages/splash/splash_page.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: MainPage),
    AutoRoute(
      page: RestaurantDetailPage,
      children: [
        AutoRoute(page: RestaurantMenusPage, initial: true),
        AutoRoute(page: RestaurantDescriptionPage),
        AutoRoute(page: RestaurantReviewsPage),
      ],
    ),
    AutoRoute(page: RestaurantSearchPage),
  ],
)
class $AppRouter {}
