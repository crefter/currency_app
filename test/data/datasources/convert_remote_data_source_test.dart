import 'package:currency_app/data/datasource/remote/convert_remote_data_source.dart';
import 'package:currency_app/data/dto/convert_response.dart';
import 'package:currency_app/data/errors/convert_api_exception.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'convert_remote_data_source_test.mocks.dart';

@GenerateMocks([ConvertRemoteDataSource])
void main() {
  group('ConvertRemoteDataSource tests', () {
    final mockConvertRemoteDataSource = MockConvertRemoteDataSource();
    test('should get response when have called', () async {
      const expected = ConvertResponse(
        conversion: ConversionResponse(
          amount: 10,
          from: 'USD',
          to: 'EUR',
          result: 8,
        ),
      );
      when(
        mockConvertRemoteDataSource.getResponse(
          amount: anyNamed('amount'),
          from: anyNamed('from'),
          to: anyNamed('to'),
        ),
      ).thenAnswer(
        (_) async => expected,
      );
      final actual = await mockConvertRemoteDataSource.getResponse();
      expect(actual, expected);
    });

    test('should throw exception if from is wrong', () async {
      when(
        mockConvertRemoteDataSource.getResponse(
          amount: anyNamed('amount'),
          from: 'ZXC',
          to: anyNamed('to'),
          output: anyNamed('output'),
        ),
      ).thenThrow(const ConvertApiException('message', 'description'));
      try {
        await mockConvertRemoteDataSource.getResponse(from: 'ZXC');
      } on ConvertApiException catch (actual) {
        const expected = ConvertApiException('message', 'description');
        expect(actual, expected);
      }
    });

    test('should throw exception if to is wrong', () async {
      when(
        mockConvertRemoteDataSource.getResponse(
          amount: anyNamed('amount'),
          from: anyNamed('from'),
          to: 'ZXC',
          output: anyNamed('output'),
        ),
      ).thenThrow(const ConvertApiException('message', 'description'));
      try {
        await mockConvertRemoteDataSource.getResponse(to: 'ZXC');
      } on ConvertApiException catch (actual) {
        const expected = ConvertApiException('message', 'description');
        expect(actual, expected);
      }
    });
  });
}
