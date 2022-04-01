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
    double amount = 0,
    Currency from = Currency.empty,
    Currency to = Currency.empty,
  }) {
    if (amount != 0 && from != Currency.empty && to != Currency.empty) {
      emit(state.copyWith(
        status: ConvertCurrenciesStatus.ready,
      ));
    } else {
      emit(state.copyWith(
        amount: amount,
        from: from,
        to: to,
        status: ConvertCurrenciesStatus.notReady,
      ));
    }
  }

  Future<void> convert() async {
    if (state.status == ConvertCurrenciesStatus.ready ||
        state.status == ConvertCurrenciesStatus.failure) {
      try {
        emit(state.copyWith(status: ConvertCurrenciesStatus.converting));
        final answer = await _convertCurrenciesUseCase(
          amount: state.amount,
          from: state.from,
          to: state.to,
        );
        emit(state.copyWith(
          status: ConvertCurrenciesStatus.success,
          answer: answer,
        ));
        await _saveConvertResponseUseCase(answer);
      } on ConvertApiException catch (e) {
        emit(state.copyWith(
          status: ConvertCurrenciesStatus.failure,
          exception: e.message,
        ));
      }
    } else {
      emit(state.copyWith(status: ConvertCurrenciesStatus.notReady));
    }
  }
}
