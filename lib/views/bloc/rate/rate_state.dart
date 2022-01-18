part of 'rate_bloc.dart';

abstract class RateState extends Equatable {
  const RateState();
}

class RateInitial extends RateState {
  @override
  List<Object> get props => [];
}

class RateLoading extends RateState {
  @override
  List<Object?> get props => [];
}

class RateLoaded extends RateState {
  final List<Rate> rates;

  RateLoaded(this.rates);

  @override
  List<Object?> get props => [rates];
}

class RateError extends RateState {
  final String errorMessage;

  RateError(this.errorMessage);

  @override
  List<Object?> get props => [errorMessage];
}

class RateFinding extends RateState {
  @override
  List<Object?> get props => [];
}

class RateFound extends RateState {
  final Rate rate;

  RateFound(this.rate);

  @override
  List<Object?> get props => [rate];
}
