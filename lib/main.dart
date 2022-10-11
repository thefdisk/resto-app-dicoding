import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:resto_app_dicoding/injection.dart';
import 'package:resto_app_dicoding/presentation/app_widget.dart';

/// Architecture di project ini terinspirasi dari DDD (Domain Driven Design)
/// dari playlist youtube Reso Coder
/// https://www.youtube.com/playlist?list=PLB6lc7nQ1n4iS5p-IezFFgqP6YvAJy84U

void main() {
  configureDependencies(Environment.dev);

  runApp(const AppWidget());
}
