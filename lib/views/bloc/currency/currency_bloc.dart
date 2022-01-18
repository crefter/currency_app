import 'package:bloc/bloc.dart';
import 'package:currency_app/domain/entities/currency.dart';
import 'package:equatable/equatable.dart';

part 'currency_event.dart';

part 'currency_state.dart';

class CurrencyBloc extends Bloc<CurrencyEvent, CurrencyState> {
  CurrencyBloc() : super(CurrencyInitial()) {
    //TODO: handle events
    on<CurrencyEvent>((event, emit) {});
  }
}
