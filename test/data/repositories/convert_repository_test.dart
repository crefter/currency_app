import 'package:currency_app/data/api/convert_api.dart';
import 'package:currency_app/data/dto/convert_response.dart';
import 'package:currency_app/data/repositories/convert_repository_impl.dart';
import 'package:currency_app/domain/entities/conversion.dart';
import 'package:currency_app/domain/entities/currency.dart';
import 'package:currency_app/domain/repositories/convert_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../api/convert_api_test.mocks.dart';
import 'convert_repository_test.mocks.dart';

@GenerateMocks([ConvertRepository])
void main() async {
  group('Convert repository tests', () {
    final ConvertRepository mockRepository = MockConvertRepository();
    final ConvertApi mockConvertApi = MockConvertApi();
    late ConvertRepository repository;

    test('should convert from currency to currency', () async {
      when(mockRepository.convert(
              amount: 10,
              from: const Currency('USD', 'country'),
              to: const Currency('EUR', ''),))
          .thenAnswer((_) async => Conversion(10, 'USD', 'EUR', 8));
      final actual = await mockRepository.convert(
          amount: 10,
          from: const Currency('USD', 'country'),
          to: const Currency('EUR', ''),);
      final expected = Conversion(10, 'USD', 'EUR', 8);
      expect(actual, expected);
    });

    test('should not convert from currency to currency', () async {
      when(mockRepository.convert(
              amount: 10,
              from: const Currency('USD', 'country'),
              to: const Currency('EUR', ''),))
          .thenAnswer((_) async => Conversion(10, 'USD', 'EUR', 8));
      final answer = await mockRepository.convert(
          amount: 10,
          from: const Currency('USD', 'country'),
          to: const Currency('EUR', ''),);
      final pattern = Conversion(10, 'USD', 'EUR', 6);

      final actual = answer == pattern;
      expect(actual, false);
    });

    test('should convert from usd to eur', () async {
      when(mockConvertApi.convert(
        amount: 10,
        from: 'USD',
        to: 'EUR',
        output: anyNamed('output'),
      )).thenAnswer((_) async => ConvertResponse(
            conversion: ConversionResponse(
              amount: 10,
              from: 'USD',
              to: 'EUR',
              result: 8,
            ),
          ));
      repository = ConvertRepositoryImpl(mockConvertApi);
      final actual = await repository.convert(
        amount: 10,
        from: const Currency('USD', ''),
        to: const Currency('EUR', ''),
      );
      final expected = Conversion(10, 'USD', 'EUR', 8);

      expect(actual, expected);
    });
  });
}
