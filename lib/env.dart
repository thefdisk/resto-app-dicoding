import 'package:injectable/injectable.dart';

abstract class Env {
  String get baseUrl;
}

@Injectable(as: Env)
@dev
class DevEnv implements Env {
  @override
  String get baseUrl => 'https://restaurant-api.dicoding.dev';
}

@Injectable(as: Env)
@prod
class ProdEnv implements Env {
  @override
  String get baseUrl => 'https://restaurant-api.dicoding.dev';
}
