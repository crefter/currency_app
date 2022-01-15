import 'package:currency_app/data/api/currency_api.dart';
import 'package:currency_app/data/api/currency_api_impl.dart';
import 'package:currency_app/data/repositories/currency_repository.dart';
import 'package:currency_app/data/repositories/currency_repository_impl.dart';
import 'package:currency_app/views/my_app.dart';
import 'package:currency_app/views/navigation/main_navigation.dart';
import 'package:currency_app/views/screens/screen_factory/screen_factory.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

void setupDependencies() {
  final getIt = GetIt.instance;

  //views
  getIt.registerSingleton(ScreenFactory());
  getIt.registerSingleton(MainNavigation());

  //network
  getIt.registerSingleton(Dio());

  //api
  getIt.registerLazySingleton<CurrencyApi>(() => CurrencyApiImpl(getIt<Dio>()));

  //repositories
  getIt.registerLazySingleton<CurrencyRepository>(
      () => CurrencyRepositoryImpl(getIt<CurrencyApi>()));
}

void main() {
  setupDependencies();
  runApp(MyApp());
}
