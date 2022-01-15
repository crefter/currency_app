import 'package:currency_app/data/api/currency_api.dart';
import 'package:currency_app/data/api/currency_api_impl.dart';
import 'package:currency_app/domain/repositories/currency_repository.dart';
import 'package:currency_app/data/repositories/currency_repository_impl.dart';
import 'package:currency_app/domain/entities/currency.dart';
import 'package:currency_app/domain/entities/rate.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';

void setupDependencies() {
  final getIt = GetIt.instance;

  getIt.registerSingleton<Dio>(Dio());
  getIt.registerSingleton<CurrencyApi>(CurrencyApiImpl(getIt<Dio>()));
  getIt.registerSingleton<CurrencyRepository>(
      CurrencyRepositoryImpl(getIt<CurrencyApi>()));
}

void main() {
  group('Currency repository tests', () {
    setUpAll(() {
      setupDependencies();
    });

    test('Get currencies', () async {
      final repo = GetIt.instance<CurrencyRepository>();
      final currencies = await repo.getCurrencies();
      final first = currencies.first;
      final typeMatcher = isA<Currency>()
          .having((p0) => p0.name, 'name', contains('AED'))
          .having((p0) => p0.country, 'country',
              contains('United Arab Emirates Dirham'));
      expect(first, typeMatcher);
    });

    test('Get rates', () async {
      final repo = GetIt.instance<CurrencyRepository>();
      var rates = await repo.getRates(base: 'USD');
      final first = rates.first;
      final TypeMatcher typeMatcher = isA<Rate>()
          .having((p0) => p0.name, 'name', contains('AED'))
          .having((p0) => p0.value, 'value', equals(3.67317));

      expect(first, typeMatcher);
    });
  });
}
