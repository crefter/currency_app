import 'package:currency_app/domain/entities/currency.dart';
import 'package:currency_app/domain/entities/rate.dart';
import 'package:currency_app/domain/usecases/find_rate_for_currency_use_case.dart';
import 'package:currency_app/domain/usecases/load_rates_for_currency_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'find_rate_for_currency_use_case.mocks.dart';

@GenerateMocks([LoadRatesForCurrencyUseCase])
void main() {
  late MockLoadRatesForCurrencyUseCase mockLoadRatesForCurrencyUseCase;
  late FindRateForCurrencyUseCase useCase;

  setUp(() {
    mockLoadRatesForCurrencyUseCase = MockLoadRatesForCurrencyUseCase();
    useCase = FindRateForCurrencyUseCase(mockLoadRatesForCurrencyUseCase);
  });

  final answer = [Rate('USD', 1.0), Rate('RUB', 30.0)];
  final answerIfListEmpty = [Rate('RUB', 1.0), Rate('USD', 70.0)];
  final defaultCurrency = Currency('RUB', 'Russian Ruble');
  final currency = Currency('USD', 'United States Dollar');
  final rate = Rate('USD', 1.0);
  final rateIfListEmpty = Rate('USD', 70.0);

  group('find rate test', () {
    test('should find rate for currency from the repository', () async {

      final result = await useCase(currency, answer);

      expect(result, rate);
    });

    test('should find rate for currency from the repository if rates is empty',
        () async {
      when(mockLoadRatesForCurrencyUseCase(currency: anyNamed('currency')))
          .thenAnswer((_) async => answerIfListEmpty);

      final result = await useCase(currency, [],
          defaultCurrency: defaultCurrency);

      expect(result, rateIfListEmpty);
    });
  });
}
