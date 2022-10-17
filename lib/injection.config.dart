// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity_plus/connectivity_plus.dart' as _i3;
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i7;

import 'application/restaurant/restaurant_detail_loader/restaurant_detail_loader_bloc.dart'
    as _i13;
import 'application/restaurant/restaurant_favorite_actor/restaurant_favorite_actor_bloc.dart'
    as _i14;
import 'application/restaurant/restaurant_loader/restaurant_loader_bloc.dart'
    as _i15;
import 'application/restaurant/restaurant_review_form/restaurant_review_form_bloc.dart'
    as _i16;
import 'application/restaurant/restaurant_search_loader/restaurant_search_loader_bloc.dart'
    as _i17;
import 'application/scheduling/bloc/scheduling_bloc.dart' as _i10;
import 'common/api/api_client.dart' as _i8;
import 'common/di/connectivity_di.dart' as _i18;
import 'common/di/dio_di.dart' as _i19;
import 'common/di/shared_preferences_di.dart' as _i20;
import 'common/network/network_client.dart' as _i6;
import 'domain/restaurant/i_restaurant_repository.dart' as _i11;
import 'env.dart' as _i5;
import 'infrastructure/restaurant/data_sources/remote_data_provider.dart'
    as _i9;
import 'infrastructure/restaurant/restaurant_repository.dart' as _i12;

const String _dev = 'dev';
const String _prod = 'prod';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final connectivityDi = _$ConnectivityDi();
  final dioDi = _$DioDi();
  final sharedPreferencesDi = _$SharedPreferencesDi();
  gh.lazySingleton<_i3.Connectivity>(() => connectivityDi.connectivity);
  gh.lazySingleton<_i4.Dio>(() => dioDi.dio);
  gh.factory<_i5.Env>(
    () => _i5.DevEnv(),
    registerFor: {_dev},
  );
  gh.factory<_i5.Env>(
    () => _i5.ProdEnv(),
    registerFor: {_prod},
  );
  gh.lazySingleton<_i6.NetworkClient>(
      () => _i6.NetworkClient(get<_i3.Connectivity>()));
  await gh.factoryAsync<_i7.SharedPreferences>(
    () => sharedPreferencesDi.prefs,
    preResolve: true,
  );
  gh.lazySingleton<_i8.ApiClient>(() => _i8.ApiClient(
        get<_i4.Dio>(),
        get<_i5.Env>(),
      ));
  gh.factory<_i9.RestaurantRemoteDataProvider>(
      () => _i9.RestaurantRemoteDataProvider(get<_i8.ApiClient>()));
  gh.factory<_i10.SchedulingBloc>(
      () => _i10.SchedulingBloc(get<_i7.SharedPreferences>()));
  gh.factory<_i11.IRestaurantRepository>(
      () => _i12.RestaurantRepository(get<_i9.RestaurantRemoteDataProvider>()));
  gh.factory<_i13.RestaurantDetailLoaderBloc>(
      () => _i13.RestaurantDetailLoaderBloc(get<_i11.IRestaurantRepository>()));
  gh.factory<_i14.RestaurantFavoriteActorBloc>(() =>
      _i14.RestaurantFavoriteActorBloc(get<_i11.IRestaurantRepository>()));
  gh.factory<_i15.RestaurantLoaderBloc>(
      () => _i15.RestaurantLoaderBloc(get<_i11.IRestaurantRepository>()));
  gh.factory<_i16.RestaurantReviewFormBloc>(
      () => _i16.RestaurantReviewFormBloc(get<_i11.IRestaurantRepository>()));
  gh.factory<_i17.RestaurantSearchLoaderBloc>(
      () => _i17.RestaurantSearchLoaderBloc(get<_i11.IRestaurantRepository>()));
  return get;
}

class _$ConnectivityDi extends _i18.ConnectivityDi {}

class _$DioDi extends _i19.DioDi {}

class _$SharedPreferencesDi extends _i20.SharedPreferencesDi {}
