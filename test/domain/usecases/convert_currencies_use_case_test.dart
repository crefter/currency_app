import 'package:currency_app/domain/entities/conversion.dart';
import 'package:currency_app/domain/entities/currency.dart';
import 'package:currency_app/domain/repositories/convert_repository.dart';
import 'package:currency_app/domain/usecases/convert_currencies_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../data/repositories/convert_repository_test.mocks.dart';


Future<void> main() async {
  group('Convert currencies use case tests', () {
    final ConvertRepository repository = MockConvertRepository();
    final useCase = ConvertCurrenciesUseCase(repository);
    test('should convert_currencies_use_case convert usd to eur', () async {
      const amount = 10.0;
      const result = 8.0;
      const usd = Currency('USD', '');
      const eur = Currency('EUR', '');
      when(repository.convert(
        amount: amount,
        from: usd,
        to: eur,
        output: anyNamed('output'),
      )).thenAnswer((_) async => Conversion(amount, usd.name, eur.name, result));

      final actual = await useCase.call(amount: amount, from: usd, to: eur);
      final expected = Conversion(amount, usd.name, eur.name, result);

      expect(actual, expected);
    });

    test('should convert_currencies_use_case get exception', () async {
      const amount = 10.0;
      const result = 8.0;
      const wrongResult = 9.0;
      const usd = Currency('USD', '');
      const eur = Currency('EUR', '');
      when(repository.convert(
        amount: 10,
        from: usd,
        to: eur,
        output: anyNamed('output'),
      )).thenAnswer((_) async => Conversion(amount, usd.name, eur.name, wrongResult));

      final actual = await useCase.call(amount: amount, from: usd, to: eur);
      final expected = Conversion(amount, usd.name, eur.name, result);

      final answer = actual == expected;

      expect(answer, false);
    });
  });
}
