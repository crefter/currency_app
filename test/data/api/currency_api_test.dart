import 'package:currency_app/data/api/currency_api.dart';
import 'package:currency_app/data/api/currency_api_impl.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';

void setupDependencies() {
  final get = GetIt.instance;

  get
    ..registerSingleton(Dio())
    ..registerLazySingleton<CurrencyApi>(() => CurrencyApiImpl(get()));
}

void main() async {
  group('Currency api tests', () {
    setUpAll(setupDependencies);

    test('Get currencies', () async {
      final api = GetIt.instance<CurrencyApi>();
      final response = await api.getCurrencies();
      expect(response.currencies.containsKey('RUB'), true);
      expect(response.currencies.containsKey('ZXC'), false);
      expect(response.currencies.containsKey('USD'), true);
    });
    test('Get currency rates', () async {
      final api = GetIt.instance<CurrencyApi>();

      final currencyRates = await api.getCurrencyRatesFor(base: 'USD');
      final entries = currencyRates.rates.entries;
      final first = entries.first;
      final rub = entries.where((element) => element.key == 'RUB').first;
      expect(first.key, 'AED');
      expect(rub.key, 'RUB');
    });
  });
}
