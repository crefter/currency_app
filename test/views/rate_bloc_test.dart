import 'package:currency_app/data/errors/currency_api_exception.dart';
import 'package:currency_app/domain/entities/rate.dart';
import 'package:currency_app/domain/usecases/find_rates_for_currency_use_case.dart';
import 'package:currency_app/domain/usecases/load_rates_for_currency_use_case.dart';
import 'package:currency_app/views/bloc/rate/rate_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'rate_bloc_test.mocks.dart';

@GenerateMocks([LoadRatesForCurrencyUseCase, FindRatesForCurrencyUseCase])
void main() {
  group('Rate bloc tests', () {
    late final MockLoadRatesForCurrencyUseCase loadRatesUseCase;
    late final MockFindRatesForCurrencyUseCase findRatesUseCase;
    late RateBloc rateBloc;
    setUpAll(() {
      loadRatesUseCase = MockLoadRatesForCurrencyUseCase();
      findRatesUseCase = MockFindRatesForCurrencyUseCase();
    });

    setUp(() {
      rateBloc = RateBloc(loadRatesUseCase, findRatesUseCase);
    });

    test(
      'initial state is RateInitial',
      () {
        expect(rateBloc.state, const RateState.initial());
      },
    );

    group('OnRateCurrencyChosen', () {
      test(
        'should return state RateError if currencyName isEmpty',
        () async {
          rateBloc.add(const RateEvent.currencyChosen(''));
          await Future.delayed(const Duration(milliseconds: 10), () {});
          expect(
            rateBloc.state,
            const RateState.error(
              [],
              [],
              'Something went wrong!',
            ),
          );
        },
      );

      test(
        'should return state RateError when get CurrencyApiException',
        () async {
          final currencyApiException =
              CurrencyApiException('code', 'description');
          when(loadRatesUseCase.call(currency: anyNamed('currency')))
              .thenThrow(currencyApiException);
          rateBloc.add(const RateEvent.currencyChosen('USD'));

          await Future.delayed(const Duration(milliseconds: 10), () {});
          expect(
            rateBloc.state,
            RateState.error(
              [],
              [],
              '${currencyApiException.description} '
              '(code of exception: ${currencyApiException.code.toString()})',
            ),
          );
        },
      );

      test(
        'should return state RateLoaded if currencyName is not empty',
        () async {
          final list = [Rate('USD', 10)];
          when(loadRatesUseCase.call(currency: 'USD')).thenAnswer(
            (_) async {
              return list;
            },
          );
          rateBloc.add(const RateEvent.currencyChosen('USD'));
          await Future.delayed(const Duration(milliseconds: 10), () {});
          expect(
            rateBloc.state,
            RateState.loaded(list, list),
          );
        },
      );
    });
    group('OnRateFoundStarted', () {
      test(
        'should return new state RateLoaded if state is RateLoaded',
        () async {
          final list = [Rate('USD', 10), Rate('UAR', 5)];
          when(loadRatesUseCase.call(currency: anyNamed('currency')))
              .thenAnswer(
            (_) async {
              return list;
            },
          );
          rateBloc.add(const RateEvent.currencyChosen('U'));
          when(findRatesUseCase.call('U', any)).thenAnswer(
            (_) async {
              return list;
            },
          );
          rateBloc.add(const RateEvent.foundStarted('U'));
          await Future.delayed(const Duration(milliseconds: 10), () {});
          expect(
            rateBloc.state,
            RateState.loaded(list, list),
          );
        },
      );

      test('should do nothing if state is not RateLoaded', () async {
        rateBloc.add(const RateEvent.foundStarted('U'));
        await Future.delayed(const Duration(milliseconds: 10), () {});
        expect(
          rateBloc.state,
          const RateState.initial(),
        );
      });
    });
  });
}
