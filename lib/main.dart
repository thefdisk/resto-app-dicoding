import 'dart:io';

import 'package:android_alarm_manager_plus/android_alarm_manager_plus.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:resto_app_dicoding/application/background_service/background_service.dart';
import 'package:resto_app_dicoding/application/notification_controller/notification_controller.dart';
import 'package:resto_app_dicoding/injection.dart';
import 'package:resto_app_dicoding/presentation/app_widget.dart';

/// Architecture di project ini terinspirasi dari DDD (Domain Driven Design)
/// dari playlist youtube Reso Coder
/// https://www.youtube.com/playlist?list=PLB6lc7nQ1n4iS5p-IezFFgqP6YvAJy84U

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final BackgroundService service = BackgroundService();

  service.initializeIsolate();

  if (Platform.isAndroid) {
    await AndroidAlarmManager.initialize();
  }

  // init awesome_notifications
  NotificationController.initializeLocalNotifications();

  await configureDependencies(Environment.dev);

  runApp(const AppWidget());
}
