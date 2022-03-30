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
  final String exception;
  final Currency from;
  final Currency to;
  final double amount;
  final ConvertCurrenciesStatus status;
  final Conversion answer;

  @override
  List<Object?> get props => [from, to, status];

  const ConvertCurrenciesState({
    this.exception = '',
    this.amount = 0,
    this.from = Currency.empty,
    this.to = Currency.empty,
    this.status = ConvertCurrenciesStatus.initial,
    this.answer = Conversion.empty,
  });

  ConvertCurrenciesState copyWith({
    double? amount,
    Currency? from,
    Currency? to,
    ConvertCurrenciesStatus? status,
    Conversion? answer,
    String? exception,
  }) {
    return ConvertCurrenciesState(
      amount: amount ?? this.amount,
      from: from ?? this.from,
      to: to ?? this.to,
      status: status ?? this.status,
      answer: answer ?? this.answer,
      exception: exception ?? this.exception,
    );
  }
}
