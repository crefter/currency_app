import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:currency_app/data/errors/currency_api_exception.dart';
import 'package:currency_app/domain/entities/rate.dart';
import 'package:currency_app/domain/usecases/find_rates_for_currency_use_case.dart';
import 'package:currency_app/domain/usecases/load_rates_for_currency_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rate_event.dart';

part 'rate_state.dart';

part 'rate_bloc.freezed.dart';

class RateBloc extends Bloc<RateEvent, RateState> {
  final LoadRatesForCurrencyUseCase _loadRatesForCurrencyUseCase;
  final FindRatesForCurrencyUseCase _findRatesForCurrencyUseCase;
  List<Rate> _rates = [];

  RateBloc(
    this._loadRatesForCurrencyUseCase,
    this._findRatesForCurrencyUseCase,
  ) : super(const RateState.initial()) {
    on<RateEventCurrencyChosen>(
      _onRateCurrencyChosen,
    );
    on<RateEventFoundStarted>(
      _onRateFoundStarted,
    );
  }

  Future<void> _onRateCurrencyChosen(
    RateEventCurrencyChosen event,
    Emitter<RateState> emit,
  ) async {
    if (event.currencyName.isNotEmpty) {
      emit(const RateState.loading());
      try {
        final rates =
            await _loadRatesForCurrencyUseCase(currency: event.currencyName);
        _rates = rates;
        emit(RateState.loaded(rates));
      } on CurrencyApiException catch (e) {
        emit(RateState.error(
          '${e.description} (code of exception: ${e.code.toString()})',
        ));
      }
    } else {
      emit(const RateState.error('Something went wrong!'));
    }
  }

  Future<void> _onRateFoundStarted(
    RateEventFoundStarted event,
    Emitter<RateState> emit,
  ) async {
    if (state is RateStateLoaded) {
      final currency = event.query;
      final rates = await _findRatesForCurrencyUseCase(currency, _rates);
      emit(RateState.loaded(rates));
    }
  }
}
