import 'dart:isolate';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:resto_app_dicoding/common/functions/app_functions.dart';
import 'package:resto_app_dicoding/infrastructure/restaurant/data_sources/remote_data_provider.dart';
import 'package:resto_app_dicoding/injection.dart';

final ReceivePort port = ReceivePort();

class BackgroundService {
  static BackgroundService? _instance;
  static const String _isolateName = 'isolate';
  static SendPort? _uiSendPort;

  BackgroundService._internal() {
    _instance = this;
  }

  factory BackgroundService() => _instance ?? BackgroundService._internal();

  void initializeIsolate() {
    IsolateNameServer.registerPortWithName(port.sendPort, _isolateName);
  }

  static Future<void> callback() async {
    debugPrint('Alarm fired!');

    if (!GetIt.I.isRegistered<RestaurantRemoteDataProvider>()) {
      await configureDependencies(Environment.dev);
    }

    final remoteDataProvider = getIt<RestaurantRemoteDataProvider>();

    final result = await remoteDataProvider.fetchRestaurants();

    if (!result.hasError) {
      await showSchedulingNotification(restaurantDto: result.data!);
    }

    _uiSendPort ??= IsolateNameServer.lookupPortByName(_isolateName);
    _uiSendPort?.send(null);
  }
}
