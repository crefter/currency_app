part of 'currency_bloc.dart';

abstract class CurrencyEvent extends Equatable {
  const CurrencyEvent();
}

class CurrencyAppStarted extends CurrencyEvent {
  @override
  List<Object?> get props => [];
}
