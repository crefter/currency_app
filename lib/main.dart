import 'package:currency_app/data/api/convert_api.dart';
import 'package:currency_app/data/api/convert_api_impl.dart';
import 'package:currency_app/data/api/currency_api.dart';
import 'package:currency_app/data/api/currency_api_impl.dart';
import 'package:currency_app/data/datasource/local/convert_local_data_source.dart';
import 'package:currency_app/data/datasource/local/convert_local_data_source_impl.dart';
import 'package:currency_app/data/datasource/remote/convert_remote_data_source.dart';
import 'package:currency_app/data/datasource/remote/convert_remote_data_source_impl.dart';
import 'package:currency_app/data/dto/convert_response.dart';
import 'package:currency_app/data/repositories/convert_repository_impl.dart';
import 'package:currency_app/data/repositories/currency_repository_impl.dart';
import 'package:currency_app/domain/entities/conversion.dart';
import 'package:currency_app/domain/repositories/convert_repository.dart';
import 'package:currency_app/domain/repositories/currency_repository.dart';
import 'package:currency_app/domain/usecases/convert_currencies_use_case.dart';
import 'package:currency_app/domain/usecases/find_rates_for_currency_use_case.dart';
import 'package:currency_app/domain/usecases/load_currencies_use_case.dart';
import 'package:currency_app/domain/usecases/load_rates_for_currency_use_case.dart';
import 'package:currency_app/domain/usecases/save_convert_response_use_case.dart';
import 'package:currency_app/views/my_app.dart';
import 'package:currency_app/views/navigation/main_navigation.dart';
import 'package:currency_app/views/screens/screen_factory/screen_factory.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';

void setupDependencies() {
  final get = GetIt.instance;

  //views
  get
    ..registerSingleton(ScreenFactory())
    ..registerSingleton(MainNavigation());

  //network
  get.registerSingleton<Dio>(Dio());

  //api
  get
    ..registerLazySingleton<CurrencyApi>(
      () => CurrencyApiImpl(get<Dio>()),
    )
    ..registerLazySingleton<ConvertApi>(
      () => ConvertApiImpl(get<Dio>()),
    );

  //data sources
  get
    ..registerLazySingleton<ConvertLocalDataSource>(
      () => ConvertLocalDataSourceImpl(),
    )
    ..registerLazySingleton<ConvertRemoteDataSource>(
      () => ConvertRemoteDataSourceImpl(get<ConvertApi>()),
    );

  //repositories
  get
    ..registerLazySingleton<CurrencyRepository>(
      () => CurrencyRepositoryImpl(get<CurrencyApi>()),
    )
    ..registerLazySingleton<ConvertRepository>(
      () => ConvertRepositoryImpl(
        get<ConvertLocalDataSource>(),
        get<ConvertRemoteDataSource>(),
      ),
    );

  //use cases
  get
    ..registerLazySingleton<LoadRatesForCurrencyUseCase>(
      () => LoadRatesForCurrencyUseCase(get<CurrencyRepository>()),
    )
    ..registerLazySingleton<LoadCurrenciesUseCase>(
      () => LoadCurrenciesUseCase(get<CurrencyRepository>()),
    )
    ..registerLazySingleton<FindRatesForCurrencyUseCase>(
      () => FindRatesForCurrencyUseCase(get<LoadRatesForCurrencyUseCase>()),
    )
    ..registerLazySingleton<ConvertCurrenciesUseCase>(
      () => ConvertCurrenciesUseCase(get<ConvertRepository>()),
    )
    ..registerLazySingleton<SaveConvertResponseUseCase>(
      () => SaveConvertResponseUseCase(get<ConvertRepository>()),
    );
}

Future<void> initHive() async {
  await Hive.initFlutter();
  Hive
    ..registerAdapter(ConvertResponseAdapter())
    ..registerAdapter(ConversionResponseAdapter());
}

Future<void> main() async {
  await initHive();
  setupDependencies();
  final saveUseCase = GetIt.instance<SaveConvertResponseUseCase>();
  await saveUseCase.call(const Conversion(10, 'USD', 'EUR', 8));
  runApp(MyApp());
}
