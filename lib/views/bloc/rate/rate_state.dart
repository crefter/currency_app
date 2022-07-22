part of 'rate_bloc.dart';

@freezed
class RateState with _$RateState {
  const factory RateState.initial() = RateStateInitial;

  const factory RateState.loading() = RateStateLoading;

  const factory RateState.loaded(final List<Rate> rates) = RateStateLoaded;

  const factory RateState.error(final String errorMessage) = RateStateError;
}
