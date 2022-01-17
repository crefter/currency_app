import 'package:currency_app/domain/entities/currency.dart';
import 'package:currency_app/domain/entities/rate.dart';
import 'package:currency_app/domain/repositories/currency_repository.dart';
import 'package:currency_app/domain/usecases/load_rates_for_currency_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'load_rates_for_currency_use_case_test.mocks.dart';

@GenerateMocks([CurrencyRepository])
void main() {
  late MockCurrencyRepository mockCurrencyRepository;
  late LoadRatesForCurrencyUseCase useCase;

  setUp(() {
    mockCurrencyRepository = MockCurrencyRepository();
    useCase = LoadRatesForCurrencyUseCase(mockCurrencyRepository);
  });

  final Currency usd = Currency('USD', 'United States Dollar');
  final answer = [Rate('USD', 1.0)];

  test('should load rates for currency from the repository', () async {
    when(mockCurrencyRepository.getRatesFor(base: anyNamed('base')))
        .thenAnswer((_) async => answer);

    final result = await useCase(currency: usd);

    expect(result, answer);
  });
}
