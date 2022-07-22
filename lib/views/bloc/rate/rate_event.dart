part of 'rate_bloc.dart';

@freezed
class RateEvent with _$RateEvent {
  const factory RateEvent.currencyChosen(final String currencyName) =
      RateEventCurrencyChosen;

  const factory RateEvent.foundStarted(final String query) =
      RateEventFoundStarted;
}
