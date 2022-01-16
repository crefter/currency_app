import 'package:currency_app/data/api/currency_api.dart';
import 'package:currency_app/data/api/currency_api_impl.dart';
import 'package:currency_app/data/repositories/currency_repository_impl.dart';
import 'package:currency_app/domain/entities/currency.dart';
import 'package:currency_app/domain/entities/rate.dart';
import 'package:currency_app/domain/repositories/currency_repository.dart';
import 'package:currency_app/domain/services/currency_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';

void setupDependencies() {
  final getIt = GetIt.instance;

  getIt.registerSingleton<Dio>(Dio());
  getIt.registerSingleton<CurrencyApi>(CurrencyApiImpl(getIt<Dio>()));
  getIt.registerSingleton<CurrencyRepository>(
      CurrencyRepositoryImpl(getIt<CurrencyApi>()));
  getIt.registerSingleton(CurrencyService(getIt<CurrencyRepository>()));
}

void main() async {
  group('Currency service test', () {
    setUpAll(() {
      setupDependencies();
    });

    test('Should load currencies', () async {
      final service = GetIt.instance<CurrencyService>();
      final currencies = await service.loadCurrencies();
      final mockCurrency = Currency('RUB', 'Russian Ruble');

      expect(
          mockCurrency,
          currencies.firstWhere((element) =>
              element.name.toLowerCase() == mockCurrency.name.toLowerCase() &&
              element.country.toLowerCase() ==
                  mockCurrency.country.toLowerCase()));
    });

    test('Should load rates for USD', () async {
      final service = GetIt.instance<CurrencyService>();
      final usd = Currency('USD', 'United States Dollar');
      final rates = await service.loadRatesFor(usd);
      final emptyList = [];

      expect(emptyList.isEmpty, true);
      expect(rates.isNotEmpty, true);
    });

    test('Should find rate for USD where currencies is not set', () async {
      final service = GetIt.instance<CurrencyService>();
      final usd = Currency('USD', 'United States Dollar');

      final rate = await service.findRateFor(usd, [],
          defaultCurrency: Currency('USD', 'United Stated Dollar'));

      expect(rate.value, 1.0);
    });

    test('Should find rate for RUB where currencies is set', () async {
      final service = GetIt.instance<CurrencyService>();
      final usd = Currency('USD', 'United States Dollar');
      final localRates = [Rate('USD', 1.0)];

      final rate = await service.findRateFor(usd, localRates);

      expect(rate.value, 1.0);
      expect(rate.name, 'USD');
      expect(rate.name == 'RUB', false);
    });
  });
}
