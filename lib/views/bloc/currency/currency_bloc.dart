import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:currency_app/domain/entities/currency.dart';
import 'package:currency_app/domain/usecases/load_currencies_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency_event.dart';

part 'currency_state.dart';
part 'currency_bloc.freezed.dart';

class CurrencyBloc extends Bloc<CurrencyEvent, CurrencyState> {
  final LoadCurrenciesUseCase _loadCurrenciesUseCase;

  CurrencyBloc(this._loadCurrenciesUseCase) : super(const CurrencyState.initial()) {
    on<CurrencyAppStarted>(
      _onCurrencyAppStarted,
    );
    on<CurrencySelectEnded>(
      _onCurrencySelectEnded,
    );
    add(const CurrencyEvent.appStarted());
  }

  FutureOr<void> _onCurrencyAppStarted(
    CurrencyAppStarted event,
    Emitter<CurrencyState> emit,
  ) async {
    try {
      emit(CurrencyState.loaded(await _loadCurrenciesUseCase()));
    } on Exception catch (e) {
      emit(CurrencyState.error(e.toString()));
    }
  }

  FutureOr<void> _onCurrencySelectEnded(
    CurrencySelectEnded event,
    Emitter<CurrencyState> emit,
  ) async {}
}
