part of 'currency_bloc.dart';

@freezed
class CurrencyEvent with _$CurrencyEvent {
  const factory CurrencyEvent.appStarted() = CurrencyAppStarted;
  const factory CurrencyEvent.selectEnded(final Currency selected) = CurrencySelectEnded;
}
