import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:currency_app/domain/entities/currency.dart';
import 'package:currency_app/domain/usecases/load_currencies_use_case.dart';
import 'package:equatable/equatable.dart';
import 'package:get_it/get_it.dart';

part 'currency_event.dart';

part 'currency_state.dart';


class CurrencyBloc extends Bloc<CurrencyEvent, CurrencyState> {
  final LoadCurrenciesUseCase _loadCurrenciesUseCase =
      GetIt.instance<LoadCurrenciesUseCase>();

  CurrencyBloc() : super(CurrencyInitial()) {
    on<CurrencyAppStarted>(
      _onCurrencyAppStarted,
    );
    on<CurrencySelectEnded>(
      _onCurrencySelectEnded,
    );
    add(CurrencyAppStarted());
  }

  FutureOr<void> _onCurrencyAppStarted(
      CurrencyAppStarted event, Emitter<CurrencyState> emit) async {
    emit(CurrencyLoaded(await _loadCurrenciesUseCase()));
  }

  FutureOr<void> _onCurrencySelectEnded(
      CurrencySelectEnded event, Emitter<CurrencyState> emit) async {

  }
}
