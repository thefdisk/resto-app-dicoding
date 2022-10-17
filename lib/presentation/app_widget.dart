import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:resto_app_dicoding/application/restaurant/restaurant_favorite_actor/restaurant_favorite_actor_bloc.dart';
import 'package:resto_app_dicoding/common/constant/app_constant.dart';
import 'package:resto_app_dicoding/common/functions/app_functions.dart';
import 'package:resto_app_dicoding/injection.dart';
import 'package:resto_app_dicoding/presentation/components/gen/colors.gen.dart';
import 'package:resto_app_dicoding/presentation/routes/app_router.gr.dart';
import 'package:skeletons/skeletons.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  late AppRouter _appRouter;
  static final GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();

  @override
  void initState() {
    super.initState();
    _appRouter = AppRouter();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<RestaurantFavoriteActorBloc>()
        ..add(
          const RestaurantFavoriteActorEvent.fetched(),
        ),
      child: GlobalLoaderOverlay(
        overlayWidget: const Center(
          child: SpinKitRing(
            color: ColorName.primaryYellow700,
          ),
        ),
        overlayColor: Colors.black,
        useDefaultLoading: false,
        overlayOpacity: 0.8,
        child: SkeletonTheme(
          shimmerGradient: const LinearGradient(
            colors: [
              ColorName.accentContainerGrey,
              ColorName.textDisabledGrey,
            ],
          ),
          child: MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'Restaurant app',
            key: navKey,
            routeInformationParser: _appRouter.defaultRouteParser(),
            routerDelegate: AutoRouterDelegate(_appRouter),
            theme: ThemeData(
              brightness: Brightness.dark,
              primarySwatch: createMaterialColor(ColorName.primaryYellow700),
              canvasColor: ColorName.accentBackgroundGrey,
              dividerTheme: const DividerThemeData(
                color: ColorName.accentLineGrey,
                thickness: 1,
              ),
            ),
            themeMode: ThemeMode.dark,
            builder: (context, child) => GestureDetector(
              onTap: () => dismissKeyboard(context),
              child: ResponsiveWrapper.builder(
                ClampingScrollWrapper.builder(context, child!),
                breakpoints: const [
                  ResponsiveBreakpoint.resize(
                    kMobileBreakpoint,
                    name: kMobile,
                  ),
                  ResponsiveBreakpoint.autoScale(
                    kTabletBreakpoint,
                    name: kTablet,
                  ),
                  ResponsiveBreakpoint.resize(
                    kDesktopBreakpoint,
                    name: kDesktop,
                  ),
                  ResponsiveBreakpoint.autoScale(
                    kXlBreakpoint,
                    name: kXl,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
