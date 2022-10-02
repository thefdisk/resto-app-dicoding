import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:resto_app_dicoding/injection.dart';
import 'package:resto_app_dicoding/presentation/app_widget.dart';

void main() {
  configureDependencies(Environment.dev);

  runApp(const AppWidget());
}
