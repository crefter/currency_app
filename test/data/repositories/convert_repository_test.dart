import 'package:currency_app/domain/entities/conversion.dart';
import 'package:currency_app/domain/entities/currency.dart';
import 'package:currency_app/domain/repositories/convert_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'convert_repository_test.mocks.dart';

@GenerateMocks([ConvertRepository])
void main() async {
  group('Convert repository tests', () {
    ConvertRepository repository = MockConvertRepository();

    test('should convert from currency to currency', () async {
      when(repository.convert(
              amount: 10,
              from: const Currency('USD', 'country'),
              to: const Currency('EUR', '')))
          .thenAnswer((_) async => Conversion(10, 'USD', 'EUR', 8));
      final actual = await repository.convert(
          amount: 10,
          from: const Currency('USD', 'country'),
          to: const Currency('EUR', ''));
      final expected = Conversion(10, 'USD', 'EUR', 8);
      expect(actual, expected);
    });

    test('should not convert from currency to currency', () async {
      when(repository.convert(
              amount: 10,
              from: const Currency('USD', 'country'),
              to: const Currency('EUR', '')))
          .thenAnswer((_) async => Conversion(10, 'USD', 'EUR', 8));
      final answer = await repository.convert(
          amount: 10,
          from: const Currency('USD', 'country'),
          to: const Currency('EUR', ''));
      final pattern = Conversion(10, 'USD', 'EUR', 6);

      final bool actual = answer == pattern ? true : false;
      expect(actual, false);
    });
  });
}
