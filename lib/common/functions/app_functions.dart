import 'dart:math';

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:resto_app_dicoding/common/constant/app_constant.dart';
import 'package:resto_app_dicoding/infrastructure/restaurant/restaurant_dtos.dart';

MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05];
  final swatch = <int, Color>{};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }

  for (var strength in strengths) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }
  return MaterialColor(color.value, swatch);
}

/// function yang berfungsi untuk men-hide keyboard,
void dismissKeyboard(BuildContext context) {
  final currentFocus = FocusScope.of(context);
  if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
    FocusManager.instance.primaryFocus?.unfocus();
  }
}

/// function yang berfungsi untuk mengatur format tanggal dan waktu untuk scheduling restaurant
DateTime dateTimeHelper() {
  // Date and Time Format
  final now = DateTime.now();
  final dateFormat = DateFormat('y/M/d');
  const timeSpecific = "11:00:00";
  final completeFormat = DateFormat('y/M/d H:m:s');

  // Today Format
  final todayDate = dateFormat.format(now);
  final todayDateAndTime = "$todayDate $timeSpecific";
  var resultToday = completeFormat.parseStrict(todayDateAndTime);

  // Tomorrow Format
  var formatted = resultToday.add(const Duration(days: 1));
  final tomorrowDate = dateFormat.format(formatted);
  final tomorrowDateAndTime = "$tomorrowDate $timeSpecific";
  var resultTomorrow = completeFormat.parseStrict(tomorrowDateAndTime);

  return now.isAfter(resultToday) ? resultTomorrow : resultToday;
}

Future<void> showSchedulingNotification({
  required List<RestaurantDto> restaurantDto,
}) async {
  final randomIndex = Random().nextInt(restaurantDto.length);
  final randomRestaurant = restaurantDto[randomIndex];

  final nameRestaurant = randomRestaurant.name;
  final cityRestaurant = randomRestaurant.city;

  await AwesomeNotifications().createNotification(
    content: NotificationContent(
      id: DateTime.now().millisecondsSinceEpoch.remainder(10000),
      channelKey: kNotifChannelKey,
      title: 'Ada rekomendasi Restoran hari ini loh!',
      body: '$nameRestaurant, di $cityRestaurant',
      notificationLayout: NotificationLayout.BigText,
    ),
  );
}
