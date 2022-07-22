part of 'convert_currencies_cubit.dart';

enum ConvertCurrenciesStatus {
  initial,
  ready,
  notReady,
  converting,
  success,
  failure,
}

@freezed
class ConvertCurrenciesState with _$ConvertCurrenciesState {
  const factory ConvertCurrenciesState({
    @Default('') final String exception,
    @Default(0) final double amount,
    @Default(Currency.empty) final Currency from,
    @Default(Currency.empty) final Currency to,
    @Default(ConvertCurrenciesStatus.initial)
        final ConvertCurrenciesStatus status,
    @Default(Conversion.empty) final Conversion answer,
  }) = _ConvertCurrenciesState;
}
