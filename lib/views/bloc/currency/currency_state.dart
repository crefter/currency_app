part of 'currency_bloc.dart';

abstract class CurrencyState extends Equatable {
  const CurrencyState();
}

class CurrencyInitial extends CurrencyState {
  @override
  List<Object> get props => [];
}

class CurrencyLoaded extends CurrencyState {
  final List<Currency> currencies;

  @override
  List<Object?> get props => [currencies];

  const CurrencyLoaded(this.currencies);
}

class CurrencyError extends CurrencyState {
  final String errorMessage;

  @override
  List<Object?> get props => [errorMessage];

  const CurrencyError(this.errorMessage);
}
