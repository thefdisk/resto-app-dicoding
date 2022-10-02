import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:resto_app_dicoding/presentation/routes/app_router.gr.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 2),
      () => AutoRouter.of(context).replace(const MainRoute()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Center(
          child: Text(
            'Restaurant app',
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
      ),
    );
  }
}
