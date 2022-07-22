// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'rate_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RateEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String currencyName) currencyChosen,
    required TResult Function(String query) foundStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String currencyName)? currencyChosen,
    TResult Function(String query)? foundStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String currencyName)? currencyChosen,
    TResult Function(String query)? foundStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RateEventCurrencyChosen value) currencyChosen,
    required TResult Function(RateEventFoundStarted value) foundStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RateEventCurrencyChosen value)? currencyChosen,
    TResult Function(RateEventFoundStarted value)? foundStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RateEventCurrencyChosen value)? currencyChosen,
    TResult Function(RateEventFoundStarted value)? foundStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RateEventCopyWith<$Res> {
  factory $RateEventCopyWith(RateEvent value, $Res Function(RateEvent) then) =
      _$RateEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RateEventCopyWithImpl<$Res> implements $RateEventCopyWith<$Res> {
  _$RateEventCopyWithImpl(this._value, this._then);

  final RateEvent _value;
  // ignore: unused_field
  final $Res Function(RateEvent) _then;
}

/// @nodoc
abstract class _$$RateEventCurrencyChosenCopyWith<$Res> {
  factory _$$RateEventCurrencyChosenCopyWith(_$RateEventCurrencyChosen value,
          $Res Function(_$RateEventCurrencyChosen) then) =
      __$$RateEventCurrencyChosenCopyWithImpl<$Res>;
  $Res call({String currencyName});
}

/// @nodoc
class __$$RateEventCurrencyChosenCopyWithImpl<$Res>
    extends _$RateEventCopyWithImpl<$Res>
    implements _$$RateEventCurrencyChosenCopyWith<$Res> {
  __$$RateEventCurrencyChosenCopyWithImpl(_$RateEventCurrencyChosen _value,
      $Res Function(_$RateEventCurrencyChosen) _then)
      : super(_value, (v) => _then(v as _$RateEventCurrencyChosen));

  @override
  _$RateEventCurrencyChosen get _value =>
      super._value as _$RateEventCurrencyChosen;

  @override
  $Res call({
    Object? currencyName = freezed,
  }) {
    return _then(_$RateEventCurrencyChosen(
      currencyName == freezed
          ? _value.currencyName
          : currencyName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RateEventCurrencyChosen implements RateEventCurrencyChosen {
  const _$RateEventCurrencyChosen(this.currencyName);

  @override
  final String currencyName;

  @override
  String toString() {
    return 'RateEvent.currencyChosen(currencyName: $currencyName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RateEventCurrencyChosen &&
            const DeepCollectionEquality()
                .equals(other.currencyName, currencyName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(currencyName));

  @JsonKey(ignore: true)
  @override
  _$$RateEventCurrencyChosenCopyWith<_$RateEventCurrencyChosen> get copyWith =>
      __$$RateEventCurrencyChosenCopyWithImpl<_$RateEventCurrencyChosen>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String currencyName) currencyChosen,
    required TResult Function(String query) foundStarted,
  }) {
    return currencyChosen(currencyName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String currencyName)? currencyChosen,
    TResult Function(String query)? foundStarted,
  }) {
    return currencyChosen?.call(currencyName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String currencyName)? currencyChosen,
    TResult Function(String query)? foundStarted,
    required TResult orElse(),
  }) {
    if (currencyChosen != null) {
      return currencyChosen(currencyName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RateEventCurrencyChosen value) currencyChosen,
    required TResult Function(RateEventFoundStarted value) foundStarted,
  }) {
    return currencyChosen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RateEventCurrencyChosen value)? currencyChosen,
    TResult Function(RateEventFoundStarted value)? foundStarted,
  }) {
    return currencyChosen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RateEventCurrencyChosen value)? currencyChosen,
    TResult Function(RateEventFoundStarted value)? foundStarted,
    required TResult orElse(),
  }) {
    if (currencyChosen != null) {
      return currencyChosen(this);
    }
    return orElse();
  }
}

abstract class RateEventCurrencyChosen implements RateEvent {
  const factory RateEventCurrencyChosen(final String currencyName) =
      _$RateEventCurrencyChosen;

  String get currencyName;
  @JsonKey(ignore: true)
  _$$RateEventCurrencyChosenCopyWith<_$RateEventCurrencyChosen> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RateEventFoundStartedCopyWith<$Res> {
  factory _$$RateEventFoundStartedCopyWith(_$RateEventFoundStarted value,
          $Res Function(_$RateEventFoundStarted) then) =
      __$$RateEventFoundStartedCopyWithImpl<$Res>;
  $Res call({String query});
}

/// @nodoc
class __$$RateEventFoundStartedCopyWithImpl<$Res>
    extends _$RateEventCopyWithImpl<$Res>
    implements _$$RateEventFoundStartedCopyWith<$Res> {
  __$$RateEventFoundStartedCopyWithImpl(_$RateEventFoundStarted _value,
      $Res Function(_$RateEventFoundStarted) _then)
      : super(_value, (v) => _then(v as _$RateEventFoundStarted));

  @override
  _$RateEventFoundStarted get _value => super._value as _$RateEventFoundStarted;

  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_$RateEventFoundStarted(
      query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RateEventFoundStarted implements RateEventFoundStarted {
  const _$RateEventFoundStarted(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'RateEvent.foundStarted(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RateEventFoundStarted &&
            const DeepCollectionEquality().equals(other.query, query));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(query));

  @JsonKey(ignore: true)
  @override
  _$$RateEventFoundStartedCopyWith<_$RateEventFoundStarted> get copyWith =>
      __$$RateEventFoundStartedCopyWithImpl<_$RateEventFoundStarted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String currencyName) currencyChosen,
    required TResult Function(String query) foundStarted,
  }) {
    return foundStarted(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String currencyName)? currencyChosen,
    TResult Function(String query)? foundStarted,
  }) {
    return foundStarted?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String currencyName)? currencyChosen,
    TResult Function(String query)? foundStarted,
    required TResult orElse(),
  }) {
    if (foundStarted != null) {
      return foundStarted(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RateEventCurrencyChosen value) currencyChosen,
    required TResult Function(RateEventFoundStarted value) foundStarted,
  }) {
    return foundStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RateEventCurrencyChosen value)? currencyChosen,
    TResult Function(RateEventFoundStarted value)? foundStarted,
  }) {
    return foundStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RateEventCurrencyChosen value)? currencyChosen,
    TResult Function(RateEventFoundStarted value)? foundStarted,
    required TResult orElse(),
  }) {
    if (foundStarted != null) {
      return foundStarted(this);
    }
    return orElse();
  }
}

abstract class RateEventFoundStarted implements RateEvent {
  const factory RateEventFoundStarted(final String query) =
      _$RateEventFoundStarted;

  String get query;
  @JsonKey(ignore: true)
  _$$RateEventFoundStartedCopyWith<_$RateEventFoundStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RateState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Rate> rates) loaded,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Rate> rates)? loaded,
    TResult Function(String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Rate> rates)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RateStateInitial value) initial,
    required TResult Function(RateStateLoading value) loading,
    required TResult Function(RateStateLoaded value) loaded,
    required TResult Function(RateStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RateStateInitial value)? initial,
    TResult Function(RateStateLoading value)? loading,
    TResult Function(RateStateLoaded value)? loaded,
    TResult Function(RateStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RateStateInitial value)? initial,
    TResult Function(RateStateLoading value)? loading,
    TResult Function(RateStateLoaded value)? loaded,
    TResult Function(RateStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RateStateCopyWith<$Res> {
  factory $RateStateCopyWith(RateState value, $Res Function(RateState) then) =
      _$RateStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RateStateCopyWithImpl<$Res> implements $RateStateCopyWith<$Res> {
  _$RateStateCopyWithImpl(this._value, this._then);

  final RateState _value;
  // ignore: unused_field
  final $Res Function(RateState) _then;
}

/// @nodoc
abstract class _$$RateStateInitialCopyWith<$Res> {
  factory _$$RateStateInitialCopyWith(
          _$RateStateInitial value, $Res Function(_$RateStateInitial) then) =
      __$$RateStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RateStateInitialCopyWithImpl<$Res>
    extends _$RateStateCopyWithImpl<$Res>
    implements _$$RateStateInitialCopyWith<$Res> {
  __$$RateStateInitialCopyWithImpl(
      _$RateStateInitial _value, $Res Function(_$RateStateInitial) _then)
      : super(_value, (v) => _then(v as _$RateStateInitial));

  @override
  _$RateStateInitial get _value => super._value as _$RateStateInitial;
}

/// @nodoc

class _$RateStateInitial implements RateStateInitial {
  const _$RateStateInitial();

  @override
  String toString() {
    return 'RateState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RateStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Rate> rates) loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Rate> rates)? loaded,
    TResult Function(String errorMessage)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Rate> rates)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RateStateInitial value) initial,
    required TResult Function(RateStateLoading value) loading,
    required TResult Function(RateStateLoaded value) loaded,
    required TResult Function(RateStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RateStateInitial value)? initial,
    TResult Function(RateStateLoading value)? loading,
    TResult Function(RateStateLoaded value)? loaded,
    TResult Function(RateStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RateStateInitial value)? initial,
    TResult Function(RateStateLoading value)? loading,
    TResult Function(RateStateLoaded value)? loaded,
    TResult Function(RateStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class RateStateInitial implements RateState {
  const factory RateStateInitial() = _$RateStateInitial;
}

/// @nodoc
abstract class _$$RateStateLoadingCopyWith<$Res> {
  factory _$$RateStateLoadingCopyWith(
          _$RateStateLoading value, $Res Function(_$RateStateLoading) then) =
      __$$RateStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RateStateLoadingCopyWithImpl<$Res>
    extends _$RateStateCopyWithImpl<$Res>
    implements _$$RateStateLoadingCopyWith<$Res> {
  __$$RateStateLoadingCopyWithImpl(
      _$RateStateLoading _value, $Res Function(_$RateStateLoading) _then)
      : super(_value, (v) => _then(v as _$RateStateLoading));

  @override
  _$RateStateLoading get _value => super._value as _$RateStateLoading;
}

/// @nodoc

class _$RateStateLoading implements RateStateLoading {
  const _$RateStateLoading();

  @override
  String toString() {
    return 'RateState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RateStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Rate> rates) loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Rate> rates)? loaded,
    TResult Function(String errorMessage)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Rate> rates)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RateStateInitial value) initial,
    required TResult Function(RateStateLoading value) loading,
    required TResult Function(RateStateLoaded value) loaded,
    required TResult Function(RateStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RateStateInitial value)? initial,
    TResult Function(RateStateLoading value)? loading,
    TResult Function(RateStateLoaded value)? loaded,
    TResult Function(RateStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RateStateInitial value)? initial,
    TResult Function(RateStateLoading value)? loading,
    TResult Function(RateStateLoaded value)? loaded,
    TResult Function(RateStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RateStateLoading implements RateState {
  const factory RateStateLoading() = _$RateStateLoading;
}

/// @nodoc
abstract class _$$RateStateLoadedCopyWith<$Res> {
  factory _$$RateStateLoadedCopyWith(
          _$RateStateLoaded value, $Res Function(_$RateStateLoaded) then) =
      __$$RateStateLoadedCopyWithImpl<$Res>;
  $Res call({List<Rate> rates});
}

/// @nodoc
class __$$RateStateLoadedCopyWithImpl<$Res>
    extends _$RateStateCopyWithImpl<$Res>
    implements _$$RateStateLoadedCopyWith<$Res> {
  __$$RateStateLoadedCopyWithImpl(
      _$RateStateLoaded _value, $Res Function(_$RateStateLoaded) _then)
      : super(_value, (v) => _then(v as _$RateStateLoaded));

  @override
  _$RateStateLoaded get _value => super._value as _$RateStateLoaded;

  @override
  $Res call({
    Object? rates = freezed,
  }) {
    return _then(_$RateStateLoaded(
      rates == freezed
          ? _value._rates
          : rates // ignore: cast_nullable_to_non_nullable
              as List<Rate>,
    ));
  }
}

/// @nodoc

class _$RateStateLoaded implements RateStateLoaded {
  const _$RateStateLoaded(final List<Rate> rates) : _rates = rates;

  final List<Rate> _rates;
  @override
  List<Rate> get rates {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rates);
  }

  @override
  String toString() {
    return 'RateState.loaded(rates: $rates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RateStateLoaded &&
            const DeepCollectionEquality().equals(other._rates, _rates));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_rates));

  @JsonKey(ignore: true)
  @override
  _$$RateStateLoadedCopyWith<_$RateStateLoaded> get copyWith =>
      __$$RateStateLoadedCopyWithImpl<_$RateStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Rate> rates) loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return loaded(rates);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Rate> rates)? loaded,
    TResult Function(String errorMessage)? error,
  }) {
    return loaded?.call(rates);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Rate> rates)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(rates);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RateStateInitial value) initial,
    required TResult Function(RateStateLoading value) loading,
    required TResult Function(RateStateLoaded value) loaded,
    required TResult Function(RateStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RateStateInitial value)? initial,
    TResult Function(RateStateLoading value)? loading,
    TResult Function(RateStateLoaded value)? loaded,
    TResult Function(RateStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RateStateInitial value)? initial,
    TResult Function(RateStateLoading value)? loading,
    TResult Function(RateStateLoaded value)? loaded,
    TResult Function(RateStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class RateStateLoaded implements RateState {
  const factory RateStateLoaded(final List<Rate> rates) = _$RateStateLoaded;

  List<Rate> get rates;
  @JsonKey(ignore: true)
  _$$RateStateLoadedCopyWith<_$RateStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RateStateErrorCopyWith<$Res> {
  factory _$$RateStateErrorCopyWith(
          _$RateStateError value, $Res Function(_$RateStateError) then) =
      __$$RateStateErrorCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

/// @nodoc
class __$$RateStateErrorCopyWithImpl<$Res> extends _$RateStateCopyWithImpl<$Res>
    implements _$$RateStateErrorCopyWith<$Res> {
  __$$RateStateErrorCopyWithImpl(
      _$RateStateError _value, $Res Function(_$RateStateError) _then)
      : super(_value, (v) => _then(v as _$RateStateError));

  @override
  _$RateStateError get _value => super._value as _$RateStateError;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_$RateStateError(
      errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RateStateError implements RateStateError {
  const _$RateStateError(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'RateState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RateStateError &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$RateStateErrorCopyWith<_$RateStateError> get copyWith =>
      __$$RateStateErrorCopyWithImpl<_$RateStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Rate> rates) loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Rate> rates)? loaded,
    TResult Function(String errorMessage)? error,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Rate> rates)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RateStateInitial value) initial,
    required TResult Function(RateStateLoading value) loading,
    required TResult Function(RateStateLoaded value) loaded,
    required TResult Function(RateStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RateStateInitial value)? initial,
    TResult Function(RateStateLoading value)? loading,
    TResult Function(RateStateLoaded value)? loaded,
    TResult Function(RateStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RateStateInitial value)? initial,
    TResult Function(RateStateLoading value)? loading,
    TResult Function(RateStateLoaded value)? loaded,
    TResult Function(RateStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RateStateError implements RateState {
  const factory RateStateError(final String errorMessage) = _$RateStateError;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$RateStateErrorCopyWith<_$RateStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
