import 'package:bloc/bloc.dart';
import 'package:currency_app/domain/entities/currency.dart';
import 'package:currency_app/domain/usecases/convert_currencies_use_case.dart';
import 'package:equatable/equatable.dart';

part 'convert_currencies_state.dart';

class ConvertCurrenciesCubit extends Cubit<ConvertCurrenciesState> {
  final ConvertCurrenciesUseCase _convertCurrenciesUseCase;

  ConvertCurrenciesCubit(this._convertCurrenciesUseCase)
      : super(const ConvertCurrenciesState());

  Future<void> checkToReady(
    double? amount,
    Currency? from,
    Currency? to,
  ) async {
    if (amount != null && from != null && to != null) {
      emit(state.copyWith(
        amount: amount,
        from: from,
        to: to,
        status: ConvertCurrenciesStatus.ready,
      ));
      await convert();
    } else {
      emit(state.copyWith(status: ConvertCurrenciesStatus.notReady));
    }
  }

  Future<void> convert() async {
    if (state.status == ConvertCurrenciesStatus.ready) {
      try {
        await _convertCurrenciesUseCase(
          amount: state.amount,
          from: state.from,
          to: state.to,
        );
        emit(state.copyWith(status: ConvertCurrenciesStatus.success));
      } on Exception {
        emit(state.copyWith(status: ConvertCurrenciesStatus.failure));
      }
    } else {
      emit(state.copyWith(status: ConvertCurrenciesStatus.notReady));
    }
  }
}
