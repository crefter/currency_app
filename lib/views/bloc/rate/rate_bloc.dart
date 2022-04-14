import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:currency_app/data/errors/currency_api_exception.dart';
import 'package:currency_app/domain/entities/rate.dart';
import 'package:currency_app/domain/usecases/find_rates_for_currency_use_case.dart';
import 'package:currency_app/domain/usecases/load_rates_for_currency_use_case.dart';
import 'package:equatable/equatable.dart';

part 'rate_event.dart';

part 'rate_state.dart';

class RateBloc extends Bloc<RateEvent, RateState> {
  final LoadRatesForCurrencyUseCase _loadRatesForCurrencyUseCase;
  final FindRatesForCurrencyUseCase _findRatesForCurrencyUseCase;
  List<Rate> _rates = [];

  RateBloc(
    this._loadRatesForCurrencyUseCase,
    this._findRatesForCurrencyUseCase,
  ) : super(RateInitial()) {
    on<RateCurrencyChosen>(
      _onRateCurrencyChosen,
    );
    on<RateFoundStarted>(
      _onRateFoundStarted,
    );
  }

  Future<void> _onRateCurrencyChosen(
    RateCurrencyChosen event,
    Emitter<RateState> emit,
  ) async {
    if (event.currencyName.isNotEmpty) {
      emit(RateLoading());
      try {
        final rates =
            await _loadRatesForCurrencyUseCase(currency: event.currencyName);
        _rates = rates;
        emit(RateLoaded(rates));
      } on CurrencyApiException catch (e) {
        emit(RateError(
          '${e.description} (code of exception: ${e.code.toString()})',
        ));
      }
    } else {
      emit(const RateError('Something went wrong!'));
    }
  }

  Future<void> _onRateFoundStarted(
    RateFoundStarted event,
    Emitter<RateState> emit,
  ) async {
    if (state is RateLoaded) {
      final currency = event.query;
      final rates = await _findRatesForCurrencyUseCase(currency, _rates);
      emit(RateLoaded(rates));
    }
  }
}
