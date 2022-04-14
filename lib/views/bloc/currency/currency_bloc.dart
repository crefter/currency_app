import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:currency_app/domain/entities/currency.dart';
import 'package:currency_app/domain/usecases/load_currencies_use_case.dart';
import 'package:equatable/equatable.dart';

part 'currency_event.dart';

part 'currency_state.dart';

class CurrencyBloc extends Bloc<CurrencyEvent, CurrencyState> {
  final LoadCurrenciesUseCase _loadCurrenciesUseCase;

  CurrencyBloc(this._loadCurrenciesUseCase) : super(CurrencyInitial()) {
    on<CurrencyAppStarted>(
      _onCurrencyAppStarted,
    );
    on<CurrencySelectEnded>(
      _onCurrencySelectEnded,
    );
    add(CurrencyAppStarted());
  }

  FutureOr<void> _onCurrencyAppStarted(
    CurrencyAppStarted event,
    Emitter<CurrencyState> emit,
  ) async {
    try {
      emit(CurrencyLoaded(await _loadCurrenciesUseCase()));
    } on Exception catch (e) {
      emit(CurrencyError(e.toString()));
    }
  }

  FutureOr<void> _onCurrencySelectEnded(
    CurrencySelectEnded event,
    Emitter<CurrencyState> emit,
  ) async {}
}
