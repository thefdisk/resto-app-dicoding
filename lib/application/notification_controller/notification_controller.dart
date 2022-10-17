import 'dart:io';

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:resto_app_dicoding/common/constant/app_constant.dart';

class NotificationController {
  static Future<void> initializeLocalNotifications() async {
    await AwesomeNotifications().initialize(
      null,
      [
        NotificationChannel(
          channelKey: kNotifChannelKey,
          channelName: 'Basic notifications',
          channelDescription: 'This is channel for default notifications',
          importance: NotificationImportance.Max,
          channelShowBadge: true,
        ),
      ],
    );
  }

  static Future<void> initializeNotificationEventListeners() async {
    // Only after at least the action method is set, the notification events are delivered
    AwesomeNotifications().setListeners(
      onActionReceivedMethod: onActionReceivedMethod,
      onNotificationCreatedMethod: onNotificationCreatedMethod,
      onDismissActionReceivedMethod: onDismissActionReceivedMethod,
      onNotificationDisplayedMethod: onNotificationDisplayedMethod,
    );
  }

  /// Use this method to detect when a new notification or a schedule is created
  static Future<void> onNotificationCreatedMethod(
    ReceivedNotification receivedNotification,
  ) async {}

  /// Use this method to detect every time that a new notification is displayed
  static Future<void> onNotificationDisplayedMethod(
    ReceivedNotification receivedNotification,
  ) async {}

  /// Use this method to detect if the user dismissed a notification
  static Future<void> onDismissActionReceivedMethod(
      ReceivedAction receivedAction) async {}

  /// Use this method to detect when the user taps on a notification or action button
  static Future<void> onActionReceivedMethod(
    ReceivedAction receivedAction,
  ) async {
    // Always ensure that all plugins was initialized
    WidgetsFlutterBinding.ensureInitialized();

    if (Platform.isIOS) {
      AwesomeNotifications().getGlobalBadgeCounter().then(
            (value) => AwesomeNotifications().setGlobalBadgeCounter(value - 1),
          );
    }
  }
}
