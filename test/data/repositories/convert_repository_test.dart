import 'package:currency_app/data/datasource/local/convert_local_data_source.dart';
import 'package:currency_app/data/datasource/remote/convert_remote_data_source.dart';
import 'package:currency_app/data/dto/convert_response.dart';
import 'package:currency_app/data/errors/convert_api_exception.dart';
import 'package:currency_app/data/repositories/convert_repository_impl.dart';
import 'package:currency_app/domain/entities/conversion.dart';
import 'package:currency_app/domain/entities/currency.dart';
import 'package:currency_app/domain/repositories/convert_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'convert_repository_test.mocks.dart';

@GenerateMocks([
  ConvertRepository,
  ConvertLocalDataSource,
  ConvertRemoteDataSource,
])
Future<void> main() async {
  group('Convert repository tests', () {
    final mockRepository = MockConvertRepository();
    final mockConvertLocalDataSource = MockConvertLocalDataSource();
    final mockConvertRemoteDataSource = MockConvertRemoteDataSource();
    late ConvertRepository repository;

    test('should convert from currency to currency', () async {
      when(mockRepository.convert(
        amount: 10,
        from: const Currency('USD', 'country'),
        to: const Currency('EUR', ''),
      )).thenAnswer((_) async => const Conversion(10, 'USD', 'EUR', 8));
      final actual = await mockRepository.convert(
        amount: 10,
        from: const Currency('USD', 'country'),
        to: const Currency('EUR', ''),
      );
      const expected = Conversion(10, 'USD', 'EUR', 8);
      expect(actual, expected);
    });

    test('should not convert from currency to currency', () async {
      when(mockRepository.convert(
        amount: 10,
        from: const Currency('USD', 'country'),
        to: const Currency('EUR', ''),
      )).thenAnswer((_) async => const Conversion(10, 'USD', 'EUR', 8));
      final answer = await mockRepository.convert(
        amount: 10,
        from: const Currency('USD', 'country'),
        to: const Currency('EUR', ''),
      );
      const pattern = Conversion(10, 'USD', 'EUR', 6);

      final actual = answer == pattern;
      expect(actual, false);
    });

    test('should convert from usd to eur by remote', () async {
      when(mockConvertRemoteDataSource.getResponse(
        amount: anyNamed('amount'),
        from: anyNamed('from'),
        to: anyNamed('to'),
        output: anyNamed('output'),
      )).thenAnswer((_) async => const ConvertResponse(
            conversion: ConversionResponse(
              amount: 10,
              from: 'USD',
              to: 'EUR',
              result: 8,
            ),
          ));
      repository = ConvertRepositoryImpl(
        mockConvertLocalDataSource,
        mockConvertRemoteDataSource,
      );
      final actual = await repository.convert(
        amount: 10,
        from: const Currency('USD', ''),
        to: const Currency('EUR', ''),
      );
      const expected = Conversion(10, 'USD', 'EUR', 8);

      expect(actual, expected);
    });

    test('should convert from usd to eur by local', () async {
      when(mockConvertLocalDataSource.getResponse(
        amount: anyNamed('amount'),
        from: anyNamed('from'),
        to: anyNamed('to'),
        output: anyNamed('output'),
      )).thenAnswer((realInvocation) async => const ConvertResponse(
            conversion: ConversionResponse(
              amount: 10,
              from: 'USD',
              to: 'EUR',
              result: 8,
            ),
          ));
      when(mockConvertRemoteDataSource.getResponse(
        amount: anyNamed('amount'),
        from: anyNamed('from'),
        to: anyNamed('to'),
        output: anyNamed('output'),
      )).thenThrow(ConvertApiException('message', 'description'));

      repository = ConvertRepositoryImpl(
        mockConvertLocalDataSource,
        mockConvertRemoteDataSource,
      );

      final actual = await repository.convert(
        amount: 10,
        from: const Currency('USD', ''),
        to: const Currency('EUR', ''),
      );
      const expected = Conversion(10, 'USD', 'EUR', 8);

      expect(actual, expected);
    });
  });
}
