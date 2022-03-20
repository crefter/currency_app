import 'package:currency_app/data/api/convert_api.dart';
import 'package:currency_app/data/api/convert_api_impl.dart';
import 'package:currency_app/data/dto/convert_response.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'convert_api_test.mocks.dart';

void setupDependencies() {
  final get = GetIt.instance;

  get
    ..registerSingleton(Dio())
    ..registerLazySingleton<ConvertApi>(() => ConvertApiImpl(get()));
}

@GenerateMocks([ConvertApi])
void main() async {
  group('Convert api tests', () {
    setUpAll(setupDependencies);
    final api = MockConvertApi();

    test('should convert from to', () async {
      final response = ConvertResponse(
        conversion: ConversionResponse(
          amount: 10.0,
          from: 'RUB',
          to: 'USD',
          result: 300,
        ),
      );
      when(api.convert()).thenAnswer((_) async => response);

      final actual = await api.convert();

      final expected = ConvertResponse(
        conversion: ConversionResponse(
          amount: 10.0,
          from: 'RUB',
          to: 'USD',
          result: 300,
        ),
      );

      expect(actual, expected);
    });

    test('should return bad answer from to', () async {
      final response = ConvertResponse(
        conversion: ConversionResponse(
          amount: 10.0,
          from: 'RUB',
          to: 'USD',
          result: 120,
        ),
      );
      when(api.convert()).thenAnswer((_) async => response);

      final answer = await api.convert();

      final expected = ConvertResponse(
        conversion: ConversionResponse(
          amount: 10.0,
          from: 'RUB',
          to: 'USD',
          result: 300,
        ),
      );

      final actual = answer == expected;

      expect(actual, false);
    });
  });
}
