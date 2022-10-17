import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:data_channel/data_channel.dart';
import 'package:flutter/material.dart';
import 'package:resto_app_dicoding/domain/restaurant/restaurant_failure.dart';
import 'package:resto_app_dicoding/infrastructure/restaurant/restaurant_dtos.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class RestaurantLocalDataProvider {
  static final RestaurantLocalDataProvider instance =
      RestaurantLocalDataProvider._init();

  static Database? _database;

  RestaurantLocalDataProvider._init();

  static const String _tableName = 'restaurantFavourites';

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initializeDb();
    return _database!;
  }

  Future<Database> _initializeDb() async {
    var path = await getDatabasesPath();
    var db = openDatabase(
      join(path, 'restaurant_favorite_db.db'),
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''CREATE TABLE $_tableName (
          id TEXT PRIMARY KEY,
          name TEXT,
          description TEXT,
          pictureId TEXT,
          city TEXT,
          rating REAL,
          address TEXT,
          categories TEXT,
          menus TEXT,
          customerReviews TEXT
        )''');
      },
    );

    return db;
  }

  Future<DC<RestaurantFailure, Unit>> insertRestaurantFavorite(
    RestaurantDto restaurantDto,
  ) async {
    try {
      final Database db = await database;
      await db.insert(_tableName, restaurantDto.toJson());
      debugPrint('Saved restaurant to favorite');

      return DC.data(unit);
    } catch (e, s) {
      log(
        'insertRestaurantFavorite',
        name: 'RestaurantLocalDataProvider',
        error: e,
        stackTrace: s,
      );
      return DC.error(const RestaurantFailure.unexpectedError());
    }
  }

  Future<DC<RestaurantFailure, List<RestaurantDto>>>
      getRestaurantFavourites() async {
    try {
      final Database db = await database;
      final results = await db.query(_tableName);
      debugPrint('get restaurant from favorite');

      final dtos = results.map((res) => RestaurantDto.fromJson(res)).toList();

      return DC.data(dtos);
    } catch (e, s) {
      log(
        'getRestaurantFavourites',
        name: 'RestaurantLocalDataProvider',
        error: e,
        stackTrace: s,
      );
      return DC.error(const RestaurantFailure.unexpectedError());
    }
  }

  Future<DC<RestaurantFailure, Unit>> deleteRestaurantFavorite(
    String id,
  ) async {
    try {
      final Database db = await database;

      await db.delete(
        _tableName,
        where: 'id = ?',
        whereArgs: [id],
      );
      debugPrint('Delete restaurant from favorite');

      return DC.data(unit);
    } catch (e, s) {
      log(
        'deleteRestaurantFavorite',
        name: 'RestaurantLocalDataProvider',
        error: e,
        stackTrace: s,
      );
      return DC.error(const RestaurantFailure.unexpectedError());
    }
  }
}
