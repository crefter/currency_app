import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:currency_app/data/errors/currency_api_exception.dart';
import 'package:currency_app/domain/entities/rate.dart';
import 'package:currency_app/domain/usecases/load_rates_for_currency_use_case.dart';
import 'package:equatable/equatable.dart';
import 'package:get_it/get_it.dart';

part 'rate_event.dart';

part 'rate_state.dart';

class RateBloc extends Bloc<RateEvent, RateState> {
  final _loadRatesForCurrencyUseCase =
      GetIt.instance<LoadRatesForCurrencyUseCase>();
  List<Rate> _rates = [];

  RateBloc() : super(RateInitial()) {
    on<RateCurrencyChosen>(
      _onRateCurrencyChosen,
    );
    on<RateFoundStarted>(
      _onRateFoundStarted,
    );
  }

  FutureOr<void> _onRateCurrencyChosen(
      RateCurrencyChosen event, Emitter<RateState> emit) async {
    if (event.currencyName.isNotEmpty) {
      emit(RateLoading());
      try {
        final rates =
            await _loadRatesForCurrencyUseCase(currency: event.currencyName);
        _rates = rates;
        emit(RateLoaded(rates));
      } on CurrencyApiException catch (e) {
        emit(RateError(
            '${e.description} (code of exception: ${e.code.toString()})'));
      }
    } else {
      emit(RateError('Something went wrong!'));
    }
  }

  FutureOr<void> _onRateFoundStarted(
      RateFoundStarted event, Emitter<RateState> emit) {
    if (state is RateLoaded) {
      emit(RateLoaded(_rates
          .where((element) =>
              element.name.toLowerCase().contains(event.query.toLowerCase()))
          .toList()));
    }
  }
}
