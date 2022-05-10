import 'package:currency_app/data/datasource/local/convert_local_data_source.dart';
import 'package:currency_app/data/dto/convert_response.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'convert_local_data_source_test.mocks.dart';

@GenerateMocks([ConvertLocalDataSource])
void main() {
  final mockConvertLocalDataSource = MockConvertLocalDataSource();
  group('ConvertLocalDataSource tests', () {
    const expected = ConvertResponse(
      conversion: ConversionResponse(
        amount: 10,
        from: 'USD',
        to: 'EUR',
        result: 8,
      ),
    );

    test('should get response when have called', () async {
      when(
        mockConvertLocalDataSource.getResponse(
          amount: anyNamed('amount'),
          from: anyNamed('from'),
          to: anyNamed('to'),
          output: anyNamed('output'),
        ),
      ).thenAnswer(
        (_) async => expected,
      );
      final actual = await mockConvertLocalDataSource.getResponse();
      expect(actual, expected);
    });

    test('should return null if response not found', () async {
      when(
        mockConvertLocalDataSource.getResponse(
          amount: anyNamed('amount'),
          from: anyNamed('from'),
          to: anyNamed('to'),
          output: anyNamed('output'),
        ),
      ).thenAnswer(
            (_) async => null,
      );
      final actual = await mockConvertLocalDataSource.getResponse();
      expect(actual, null);
    });

    test('should save ConvertResponse', () {
      mockConvertLocalDataSource.save(expected);
      verify(mockConvertLocalDataSource.save(expected)).called(1);
    });
  });
}
