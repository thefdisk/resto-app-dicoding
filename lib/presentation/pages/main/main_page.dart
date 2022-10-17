import 'package:auto_route/auto_route.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resto_app_dicoding/application/notification_controller/notification_controller.dart';
import 'package:resto_app_dicoding/application/restaurant/restaurant_loader/restaurant_loader_bloc.dart';
import 'package:resto_app_dicoding/application/scheduling/bloc/scheduling_bloc.dart';
import 'package:resto_app_dicoding/injection.dart';
import 'package:resto_app_dicoding/presentation/components/gen/colors.gen.dart';
import 'package:resto_app_dicoding/presentation/routes/app_router.gr.dart';

class MainPage extends StatefulWidget implements AutoRouteWrapper {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();

  @override
  Widget wrappedRoute(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<RestaurantLoaderBloc>()
              ..add(
                const RestaurantLoaderEvent.fetched(),
              ),
          ),
          BlocProvider(
            create: (context) => getIt<SchedulingBloc>()
              ..add(
                const SchedulingEvent.checked(),
              ),
          ),
        ],
        child: this,
      );
}

class _MainPageState extends State<MainPage> {
  @override
  void initState() {
    super.initState();

    NotificationController.initializeNotificationEventListeners();

    AwesomeNotifications().isNotificationAllowed().then(
      (isAllowed) {
        if (!isAllowed) {
          AwesomeNotifications().requestPermissionToSendNotifications(
            permissions: [
              NotificationPermission.Alert,
              NotificationPermission.Sound,
              NotificationPermission.Badge,
              NotificationPermission.Vibration,
              NotificationPermission.Light,
            ],
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.pageView(
      routes: const [
        HomeRoute(),
        FavoriteRoute(),
        SettingRoute(),
      ],
      builder: (context, child, pageController) {
        return Scaffold(
          body: child,
          bottomNavigationBar: ClipRRect(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(24),
              topLeft: Radius.circular(24),
            ),
            child: BottomNavigationBar(
              currentIndex: context.tabsRouter.activeIndex,
              onTap: context.tabsRouter.setActiveIndex,
              backgroundColor: ColorName.accentContainerGrey,
              selectedItemColor: ColorName.primaryYellow700,
              items: const [
                BottomNavigationBarItem(
                  label: 'Home',
                  icon: Icon(
                    Icons.home,
                  ),
                ),
                BottomNavigationBarItem(
                  label: 'Favorite',
                  icon: Icon(
                    Icons.favorite,
                  ),
                ),
                BottomNavigationBarItem(
                  label: 'Setting',
                  icon: Icon(
                    Icons.settings,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
