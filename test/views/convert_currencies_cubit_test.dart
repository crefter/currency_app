import 'package:currency_app/domain/usecases/convert_currencies_use_case.dart';
import 'package:currency_app/views/bloc/convert_currencies/convert_currencies_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';

import 'convert_currencies_cubit_test.mocks.dart';

@GenerateMocks([ConvertCurrenciesUseCase])
Future<void> main() async {
  group('Convert currencies cubit tests', () {
    late final ConvertCurrenciesCubit convertCurrenciesCubit;
    late final MockConvertCurrenciesUseCase mockUseCase;
    setUp(() {
      mockUseCase = MockConvertCurrenciesUseCase();
      convertCurrenciesCubit = ConvertCurrenciesCubit(mockUseCase);
    });
    test('initial state status is initial', () {
      expect(
        convertCurrenciesCubit.state.status,
        ConvertCurrenciesStatus.initial,
      );
    });
  });
}
