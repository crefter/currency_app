part of 'convert_currencies_cubit.dart';

enum ConvertCurrenciesStatus {
  initial,
  ready,
  notReady,
  converting,
  success,
  failure,
}

class ConvertCurrenciesState extends Equatable {
  final Currency from;
  final Currency to;
  final double amount;
  final ConvertCurrenciesStatus status;

  @override
  List<Object?> get props => [from, to, status];

  const ConvertCurrenciesState({
    this.amount = 0,
    this.from = Currency.empty,
    this.to = Currency.empty,
    this.status = ConvertCurrenciesStatus.initial,
  });

  ConvertCurrenciesState copyWith({
    double? amount,
    Currency? from,
    Currency? to,
    ConvertCurrenciesStatus? status,
  }) {
    return ConvertCurrenciesState(
      amount: amount ?? this.amount,
      from: from ?? this.from,
      to: to ?? this.to,
      status: status ?? this.status,
    );
  }
}
