import 'package:currency_app/data/api/currency_api.dart';
import 'package:currency_app/data/api/currency_api_impl.dart';
import 'package:currency_app/domain/repositories/currency_repository.dart';
import 'package:currency_app/data/repositories/currency_repository_impl.dart';
import 'package:currency_app/domain/usecases/find_rate_for_currency_use_case.dart';
import 'package:currency_app/domain/usecases/load_currencies_use_case.dart';
import 'package:currency_app/domain/usecases/load_rates_for_currency_use_case.dart';
import 'package:currency_app/views/my_app.dart';
import 'package:currency_app/views/navigation/main_navigation.dart';
import 'package:currency_app/views/screens/screen_factory/screen_factory.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

void setupDependencies() {
  final get = GetIt.instance;

  //views
  get.registerSingleton(ScreenFactory());
  get.registerSingleton(MainNavigation());

  //network
  get.registerSingleton(Dio());

  //api
  get.registerLazySingleton<CurrencyApi>(() => CurrencyApiImpl(get<Dio>()));

  //repositories
  get.registerLazySingleton<CurrencyRepository>(
      () => CurrencyRepositoryImpl(get<CurrencyApi>()));

  //use cases
  get.registerLazySingleton(
      () => LoadRatesForCurrencyUseCase(get<CurrencyRepository>()));
  get.registerLazySingleton(
      () => LoadCurrenciesUseCase(get<CurrencyRepository>()));
  get.registerLazySingleton(
      () => FindRateForCurrencyUseCase(get<LoadRatesForCurrencyUseCase>()));
}

void main() {
  setupDependencies();
  runApp(MyApp());
}
