import 'package:currency_app/domain/entities/currency.dart';
import 'package:currency_app/domain/repositories/currency_repository.dart';
import 'package:currency_app/domain/usecases/load_currencies_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockCurrencyRepository extends Mock implements CurrencyRepository {}

void main() {
  late MockCurrencyRepository mockCurrencyRepository;
  late LoadCurrenciesUseCase useCase;

  setUp(() {
    mockCurrencyRepository = MockCurrencyRepository();
    useCase = LoadCurrenciesUseCase(mockCurrencyRepository);
  });

  List<Currency> repositoryAnswer = [
    Currency('RUB', 'Russian Ruble'),
    Currency('USD', 'United States Dollar')
  ];

  test('should load currencies from the repository', () async {
    when(mockCurrencyRepository.getCurrencies())
        .thenAnswer((_) async => repositoryAnswer);

    final result = await useCase();

    expect(result, repositoryAnswer);
  });
}
