import 'package:currency_app/domain/entities/currency.dart';
import 'package:currency_app/domain/usecases/load_currencies_use_case.dart';
import 'package:currency_app/views/bloc/currency/currency_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'currency_bloc_test.mocks.dart';

@GenerateMocks([LoadCurrenciesUseCase])
void main() {
  group('Currency bloc tests', () {
    late CurrencyBloc currencyBloc;
    late final MockLoadCurrenciesUseCase loadCurrenciesUseCase;
    const list = [Currency('USD', 'United States of America')];
    setUpAll(() {
      loadCurrenciesUseCase = MockLoadCurrenciesUseCase();
    });

    test(
      'initial state is CurrencyLoaded',
      () {
        when(loadCurrenciesUseCase.call()).thenAnswer(
          (_) async => list,
        );
        currencyBloc = CurrencyBloc(loadCurrenciesUseCase);
        expect(currencyBloc.state, const CurrencyState.initial());
      },
    );
    group('OnCurrencyAppStarted', () {
      test('should return state CurrencyLoaded', () async {
        when(loadCurrenciesUseCase.call()).thenAnswer(
          (_) async => list,
        );
        currencyBloc = CurrencyBloc(loadCurrenciesUseCase)
          ..add(CurrencyAppStarted());
        await Future.delayed(const Duration(milliseconds: 10), () {});
        expect(currencyBloc.state, const CurrencyState.loaded(list));
      });

      test('should return state CurrencyError if get Exception', () async {
        when(loadCurrenciesUseCase.call()).thenThrow(
          Exception('message'),
        );
        currencyBloc = CurrencyBloc(loadCurrenciesUseCase)
          ..add(const CurrencyAppStarted());
        await Future.delayed(const Duration(milliseconds: 10), () {});
        expect(currencyBloc.state, const CurrencyState.error('Exception: message'));
      });
    });
  });
}
