part of 'currency_bloc.dart';

abstract class CurrencyState extends Equatable {
  const CurrencyState();
}

class CurrencyInitial extends CurrencyState {
  @override
  List<Object> get props => [];
}

class CurrencyLoading extends CurrencyState {
  @override
  List<Object?> get props => [];
}

class CurrencyLoaded extends CurrencyState {
  final List<Currency> currencies;

  CurrencyLoaded(this.currencies);

  @override
  List<Object?> get props => [currencies];
}

class CurrencyError extends CurrencyState {
  final String errorMessage;

  CurrencyError(this.errorMessage);

  @override
  List<Object?> get props => [errorMessage];
}
