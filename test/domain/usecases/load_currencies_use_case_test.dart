import 'package:currency_app/domain/entities/currency.dart';
import 'package:currency_app/domain/usecases/load_currencies_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'load_rates_for_currency_use_case_test.mocks.dart';

void main() {
  late MockCurrencyRepository mockCurrencyRepository;
  late LoadCurrenciesUseCase useCase;

  setUp(() {
    mockCurrencyRepository = MockCurrencyRepository();
    useCase = LoadCurrenciesUseCase(mockCurrencyRepository);
  });

  final repositoryAnswer = <Currency>[
    const Currency('RUB', 'Russian Ruble'),
    const Currency('USD', 'United States Dollar'),
  ];

  test('should load currencies from the repository', () async {
    when(mockCurrencyRepository.getCurrencies())
        .thenAnswer((_) async => repositoryAnswer);

    final result = await useCase();

    expect(result, repositoryAnswer);
  });
}
