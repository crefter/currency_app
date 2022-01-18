import 'package:bloc/bloc.dart';
import 'package:currency_app/domain/entities/rate.dart';
import 'package:equatable/equatable.dart';

part 'rate_event.dart';

part 'rate_state.dart';

class RatesBloc extends Bloc<RateEvent, RateState> {
  RatesBloc() : super(RateInitial()) {
    //TODO: handle events
    on<RateEvent>((event, emit) {});
  }
}
