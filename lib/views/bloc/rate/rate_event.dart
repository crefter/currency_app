part of 'rate_bloc.dart';

abstract class RateEvent extends Equatable {
  const RateEvent();
}

class RateCurrencyChosen extends RateEvent {
  @override
  List<Object?> get props => [];
}

class RateFindStarted extends RateEvent {
  @override
  List<Object?> get props => [];
}
