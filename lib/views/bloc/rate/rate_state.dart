part of 'rate_bloc.dart';

@freezed
class RateState with _$RateState {
  List<Rate> get filteredRates => when<List<Rate>>(
        initial: () => [],
        loading: (_, filteredRates) => filteredRates,
        loaded: (_, filteredRates) => filteredRates,
        error: (__, filteredRates, _) => filteredRates,
      );

  List<Rate> get rates => when<List<Rate>>(
    initial: () => [],
    loading: (rates, _) => rates,
    loaded: (rates, _) => rates,
    error: (rates, __, _) => rates,
  );

  const RateState._();

  const factory RateState.initial() = RateStateInitial;

  const factory RateState.loading(
    List<Rate> rates,
    List<Rate> filteredRates,
  ) = RateStateLoading;

  const factory RateState.loaded(
    List<Rate> rates,
    List<Rate> filteredRates,
  ) = RateStateLoaded;

  const factory RateState.error(
    List<Rate> rates,
    List<Rate> filteredRates,
    final String errorMessage,
  ) = RateStateError;
}
