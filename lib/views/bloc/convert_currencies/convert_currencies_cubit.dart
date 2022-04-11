import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:currency_app/data/errors/convert_api_exception.dart';
import 'package:currency_app/domain/entities/conversion.dart';
import 'package:currency_app/domain/entities/currency.dart';
import 'package:currency_app/domain/usecases/convert_currencies_use_case.dart';
import 'package:currency_app/domain/usecases/save_convert_response_use_case.dart';
import 'package:equatable/equatable.dart';

part 'convert_currencies_state.dart';

class ConvertCurrenciesCubit extends Cubit<ConvertCurrenciesState> {
  final ConvertCurrenciesUseCase _convertCurrenciesUseCase;
  final SaveConvertResponseUseCase _saveConvertResponseUseCase;

  ConvertCurrenciesCubit(
    this._convertCurrenciesUseCase,
    this._saveConvertResponseUseCase,
  ) : super(const ConvertCurrenciesState());

  void checkToReady({
    required String inputAmount,
    Currency from = Currency.empty,
    Currency to = Currency.empty,
  }) {
    final amount = double.tryParse(inputAmount);
    if (amount != null &&
        amount != 0 &&
        from != Currency.empty &&
        to != Currency.empty) {
      emit(state.copyWith(
        amount: amount,
        from: from,
        to: to,
        answer: state.answer,
        status: ConvertCurrenciesStatus.ready,
      ));
      log(state.toString());
    } else {
      emit(state.copyWith(
        amount: amount,
        from: from,
        to: to,
        answer: state.answer,
        status: ConvertCurrenciesStatus.notReady,
      ));
      log(state.toString());
    }
  }

  Future<void> convert() async {
    if (state.status == ConvertCurrenciesStatus.ready ||
        state.status == ConvertCurrenciesStatus.failure ||
        state.status == ConvertCurrenciesStatus.success) {
      try {
        emit(state.copyWith(status: ConvertCurrenciesStatus.converting));
        final answer = await _convertCurrenciesUseCase(
          amount: state.amount,
          from: state.from,
          to: state.to,
        );
        log(state.toString());
        emit(state.copyWith(
          amount: state.amount,
          from: state.from,
          to: state.to,
          status: ConvertCurrenciesStatus.success,
          answer: answer,
        ));
        log(state.toString());
        await _saveConvertResponseUseCase(answer);
      } on ConvertApiException catch (e) {
        emit(state.copyWith(
          amount: state.amount,
          from: state.from,
          to: state.to,
          answer: state.answer,
          status: ConvertCurrenciesStatus.failure,
          exception: e.message,
        ));
        log(state.toString());
      }
    } else {
      emit(state.copyWith(
        amount: state.amount,
        from: state.from,
        to: state.to,
        answer: state.answer,
        status: ConvertCurrenciesStatus.notReady,
      ));
      log(state.toString());
    }
  }
}
