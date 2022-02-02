part of 'rate_bloc.dart';

abstract class RateEvent extends Equatable {
  const RateEvent();
}

class RateCurrencyChosen extends RateEvent {
  final String currencyName;

  RateCurrencyChosen(this.currencyName);

  @override
  List<Object?> get props => [currencyName];
}

class RateFoundStarted extends RateEvent {
  final String query;

  RateFoundStarted(this.query);

  @override
  List<Object?> get props => [query];
}