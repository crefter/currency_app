part of 'currency_bloc.dart';

@freezed
class CurrencyState with _$CurrencyState {
  const factory CurrencyState.initial() = CurrencyStateInitial;
  const factory CurrencyState.loaded(final List<Currency> currencies) = CurrencyStateLoaded;
  const factory CurrencyState.error(final String errorMessage) = CurrencyStateError;
}
