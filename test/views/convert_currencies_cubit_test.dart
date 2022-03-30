import 'package:currency_app/domain/entities/conversion.dart';
import 'package:currency_app/domain/entities/currency.dart';
import 'package:currency_app/domain/usecases/convert_currencies_use_case.dart';
import 'package:currency_app/views/bloc/convert_currencies/convert_currencies_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'convert_currencies_cubit_test.mocks.dart';

@GenerateMocks([ConvertCurrenciesUseCase])
Future<void> main() async {
  group('Convert currencies cubit tests', () {
    late ConvertCurrenciesCubit convertCurrenciesCubit;
    late MockConvertCurrenciesUseCase mockUseCase;
    const usd = Currency('USD', 'country');
    const eur = Currency('EUR', 'country');
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

    /// "ready" is amount != null and from != null and to != null
    test('if "ready" then state status is ready', () async {
      convertCurrenciesCubit.checkToReady(
        amount: 10,
        from: usd,
        to: eur,
      );
      expect(
        convertCurrenciesCubit.state.status,
        ConvertCurrenciesStatus.ready,
      );
    });

    test('should return state status "not ready" if amount = null', () async {
      convertCurrenciesCubit.checkToReady(
        from: usd,
        to: eur,
      );
      expect(
        convertCurrenciesCubit.state.status,
        ConvertCurrenciesStatus.notReady,
      );
    });

    test('should return state status "not ready" if from = null', () async {
      convertCurrenciesCubit.checkToReady(
        amount: 10,
        to: eur,
      );
      expect(
        convertCurrenciesCubit.state.status,
        ConvertCurrenciesStatus.notReady,
      );
    });

    test('should return state status "not ready" if to = null', () async {
      convertCurrenciesCubit.checkToReady(
        amount: 10,
        from: usd,
      );
      expect(
        convertCurrenciesCubit.state.status,
        ConvertCurrenciesStatus.notReady,
      );
    });

    test('should return state status is success', () async {
      convertCurrenciesCubit.emit(
        convertCurrenciesCubit.state.copyWith(
          amount: 10,
          from: usd,
          to: eur,
          status: ConvertCurrenciesStatus.ready,
        ),
      );
      when(mockUseCase.call(
        amount: anyNamed('amount'),
        from: anyNamed('from'),
        to: anyNamed('to'),
      )).thenAnswer(
        (_) async => const Conversion(10, 'USD', 'EUR', 8),
      );
      await convertCurrenciesCubit.convert();
      expect(
        convertCurrenciesCubit.state.status,
        ConvertCurrenciesStatus.success,
      );
    });

    test('should return state status is failure', () async {
      convertCurrenciesCubit.emit(
        convertCurrenciesCubit.state.copyWith(
          amount: 10,
          from: usd,
          to: eur,
          status: ConvertCurrenciesStatus.ready,
        ),
      );
      when(mockUseCase.call(
        amount: anyNamed('amount'),
        from: anyNamed('from'),
        to: anyNamed('to'),
      )).thenThrow(Exception());
      await convertCurrenciesCubit.convert();
      expect(
        convertCurrenciesCubit.state.status,
        ConvertCurrenciesStatus.failure,
      );
    });

    test(
      'should return state status is "not ready" if state status not equal to "ready"',
      () async {
        await convertCurrenciesCubit.convert();
        expect(
          convertCurrenciesCubit.state.status,
          ConvertCurrenciesStatus.notReady,
        );
      },
    );
  });
}
