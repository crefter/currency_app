// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'currency_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CurrencyEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appStarted,
    required TResult Function(Currency selected) selectEnded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? appStarted,
    TResult Function(Currency selected)? selectEnded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appStarted,
    TResult Function(Currency selected)? selectEnded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrencyAppStarted value) appStarted,
    required TResult Function(CurrencySelectEnded value) selectEnded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CurrencyAppStarted value)? appStarted,
    TResult Function(CurrencySelectEnded value)? selectEnded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrencyAppStarted value)? appStarted,
    TResult Function(CurrencySelectEnded value)? selectEnded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyEventCopyWith<$Res> {
  factory $CurrencyEventCopyWith(
          CurrencyEvent value, $Res Function(CurrencyEvent) then) =
      _$CurrencyEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CurrencyEventCopyWithImpl<$Res>
    implements $CurrencyEventCopyWith<$Res> {
  _$CurrencyEventCopyWithImpl(this._value, this._then);

  final CurrencyEvent _value;
  // ignore: unused_field
  final $Res Function(CurrencyEvent) _then;
}

/// @nodoc
abstract class _$$CurrencyAppStartedCopyWith<$Res> {
  factory _$$CurrencyAppStartedCopyWith(_$CurrencyAppStarted value,
          $Res Function(_$CurrencyAppStarted) then) =
      __$$CurrencyAppStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CurrencyAppStartedCopyWithImpl<$Res>
    extends _$CurrencyEventCopyWithImpl<$Res>
    implements _$$CurrencyAppStartedCopyWith<$Res> {
  __$$CurrencyAppStartedCopyWithImpl(
      _$CurrencyAppStarted _value, $Res Function(_$CurrencyAppStarted) _then)
      : super(_value, (v) => _then(v as _$CurrencyAppStarted));

  @override
  _$CurrencyAppStarted get _value => super._value as _$CurrencyAppStarted;
}

/// @nodoc

class _$CurrencyAppStarted implements CurrencyAppStarted {
  const _$CurrencyAppStarted();

  @override
  String toString() {
    return 'CurrencyEvent.appStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CurrencyAppStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appStarted,
    required TResult Function(Currency selected) selectEnded,
  }) {
    return appStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? appStarted,
    TResult Function(Currency selected)? selectEnded,
  }) {
    return appStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appStarted,
    TResult Function(Currency selected)? selectEnded,
    required TResult orElse(),
  }) {
    if (appStarted != null) {
      return appStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrencyAppStarted value) appStarted,
    required TResult Function(CurrencySelectEnded value) selectEnded,
  }) {
    return appStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CurrencyAppStarted value)? appStarted,
    TResult Function(CurrencySelectEnded value)? selectEnded,
  }) {
    return appStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrencyAppStarted value)? appStarted,
    TResult Function(CurrencySelectEnded value)? selectEnded,
    required TResult orElse(),
  }) {
    if (appStarted != null) {
      return appStarted(this);
    }
    return orElse();
  }
}

abstract class CurrencyAppStarted implements CurrencyEvent {
  const factory CurrencyAppStarted() = _$CurrencyAppStarted;
}

/// @nodoc
abstract class _$$CurrencySelectEndedCopyWith<$Res> {
  factory _$$CurrencySelectEndedCopyWith(_$CurrencySelectEnded value,
          $Res Function(_$CurrencySelectEnded) then) =
      __$$CurrencySelectEndedCopyWithImpl<$Res>;
  $Res call({Currency selected});
}

/// @nodoc
class __$$CurrencySelectEndedCopyWithImpl<$Res>
    extends _$CurrencyEventCopyWithImpl<$Res>
    implements _$$CurrencySelectEndedCopyWith<$Res> {
  __$$CurrencySelectEndedCopyWithImpl(
      _$CurrencySelectEnded _value, $Res Function(_$CurrencySelectEnded) _then)
      : super(_value, (v) => _then(v as _$CurrencySelectEnded));

  @override
  _$CurrencySelectEnded get _value => super._value as _$CurrencySelectEnded;

  @override
  $Res call({
    Object? selected = freezed,
  }) {
    return _then(_$CurrencySelectEnded(
      selected == freezed
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as Currency,
    ));
  }
}

/// @nodoc

class _$CurrencySelectEnded implements CurrencySelectEnded {
  const _$CurrencySelectEnded(this.selected);

  @override
  final Currency selected;

  @override
  String toString() {
    return 'CurrencyEvent.selectEnded(selected: $selected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrencySelectEnded &&
            const DeepCollectionEquality().equals(other.selected, selected));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(selected));

  @JsonKey(ignore: true)
  @override
  _$$CurrencySelectEndedCopyWith<_$CurrencySelectEnded> get copyWith =>
      __$$CurrencySelectEndedCopyWithImpl<_$CurrencySelectEnded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appStarted,
    required TResult Function(Currency selected) selectEnded,
  }) {
    return selectEnded(selected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? appStarted,
    TResult Function(Currency selected)? selectEnded,
  }) {
    return selectEnded?.call(selected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appStarted,
    TResult Function(Currency selected)? selectEnded,
    required TResult orElse(),
  }) {
    if (selectEnded != null) {
      return selectEnded(selected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrencyAppStarted value) appStarted,
    required TResult Function(CurrencySelectEnded value) selectEnded,
  }) {
    return selectEnded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CurrencyAppStarted value)? appStarted,
    TResult Function(CurrencySelectEnded value)? selectEnded,
  }) {
    return selectEnded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrencyAppStarted value)? appStarted,
    TResult Function(CurrencySelectEnded value)? selectEnded,
    required TResult orElse(),
  }) {
    if (selectEnded != null) {
      return selectEnded(this);
    }
    return orElse();
  }
}

abstract class CurrencySelectEnded implements CurrencyEvent {
  const factory CurrencySelectEnded(final Currency selected) =
      _$CurrencySelectEnded;

  Currency get selected;
  @JsonKey(ignore: true)
  _$$CurrencySelectEndedCopyWith<_$CurrencySelectEnded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CurrencyState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Currency> currencies) loaded,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Currency> currencies)? loaded,
    TResult Function(String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Currency> currencies)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrencyStateInitial value) initial,
    required TResult Function(CurrencyStateLoaded value) loaded,
    required TResult Function(CurrencyStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CurrencyStateInitial value)? initial,
    TResult Function(CurrencyStateLoaded value)? loaded,
    TResult Function(CurrencyStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrencyStateInitial value)? initial,
    TResult Function(CurrencyStateLoaded value)? loaded,
    TResult Function(CurrencyStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyStateCopyWith<$Res> {
  factory $CurrencyStateCopyWith(
          CurrencyState value, $Res Function(CurrencyState) then) =
      _$CurrencyStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CurrencyStateCopyWithImpl<$Res>
    implements $CurrencyStateCopyWith<$Res> {
  _$CurrencyStateCopyWithImpl(this._value, this._then);

  final CurrencyState _value;
  // ignore: unused_field
  final $Res Function(CurrencyState) _then;
}

/// @nodoc
abstract class _$$CurrencyStateInitialCopyWith<$Res> {
  factory _$$CurrencyStateInitialCopyWith(_$CurrencyStateInitial value,
          $Res Function(_$CurrencyStateInitial) then) =
      __$$CurrencyStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CurrencyStateInitialCopyWithImpl<$Res>
    extends _$CurrencyStateCopyWithImpl<$Res>
    implements _$$CurrencyStateInitialCopyWith<$Res> {
  __$$CurrencyStateInitialCopyWithImpl(_$CurrencyStateInitial _value,
      $Res Function(_$CurrencyStateInitial) _then)
      : super(_value, (v) => _then(v as _$CurrencyStateInitial));

  @override
  _$CurrencyStateInitial get _value => super._value as _$CurrencyStateInitial;
}

/// @nodoc

class _$CurrencyStateInitial implements CurrencyStateInitial {
  const _$CurrencyStateInitial();

  @override
  String toString() {
    return 'CurrencyState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CurrencyStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Currency> currencies) loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Currency> currencies)? loaded,
    TResult Function(String errorMessage)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Currency> currencies)? loaded,
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
    required TResult Function(CurrencyStateInitial value) initial,
    required TResult Function(CurrencyStateLoaded value) loaded,
    required TResult Function(CurrencyStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CurrencyStateInitial value)? initial,
    TResult Function(CurrencyStateLoaded value)? loaded,
    TResult Function(CurrencyStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrencyStateInitial value)? initial,
    TResult Function(CurrencyStateLoaded value)? loaded,
    TResult Function(CurrencyStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CurrencyStateInitial implements CurrencyState {
  const factory CurrencyStateInitial() = _$CurrencyStateInitial;
}

/// @nodoc
abstract class _$$CurrencyStateLoadedCopyWith<$Res> {
  factory _$$CurrencyStateLoadedCopyWith(_$CurrencyStateLoaded value,
          $Res Function(_$CurrencyStateLoaded) then) =
      __$$CurrencyStateLoadedCopyWithImpl<$Res>;
  $Res call({List<Currency> currencies});
}

/// @nodoc
class __$$CurrencyStateLoadedCopyWithImpl<$Res>
    extends _$CurrencyStateCopyWithImpl<$Res>
    implements _$$CurrencyStateLoadedCopyWith<$Res> {
  __$$CurrencyStateLoadedCopyWithImpl(
      _$CurrencyStateLoaded _value, $Res Function(_$CurrencyStateLoaded) _then)
      : super(_value, (v) => _then(v as _$CurrencyStateLoaded));

  @override
  _$CurrencyStateLoaded get _value => super._value as _$CurrencyStateLoaded;

  @override
  $Res call({
    Object? currencies = freezed,
  }) {
    return _then(_$CurrencyStateLoaded(
      currencies == freezed
          ? _value._currencies
          : currencies // ignore: cast_nullable_to_non_nullable
              as List<Currency>,
    ));
  }
}

/// @nodoc

class _$CurrencyStateLoaded implements CurrencyStateLoaded {
  const _$CurrencyStateLoaded(final List<Currency> currencies)
      : _currencies = currencies;

  final List<Currency> _currencies;
  @override
  List<Currency> get currencies {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currencies);
  }

  @override
  String toString() {
    return 'CurrencyState.loaded(currencies: $currencies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrencyStateLoaded &&
            const DeepCollectionEquality()
                .equals(other._currencies, _currencies));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_currencies));

  @JsonKey(ignore: true)
  @override
  _$$CurrencyStateLoadedCopyWith<_$CurrencyStateLoaded> get copyWith =>
      __$$CurrencyStateLoadedCopyWithImpl<_$CurrencyStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Currency> currencies) loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return loaded(currencies);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Currency> currencies)? loaded,
    TResult Function(String errorMessage)? error,
  }) {
    return loaded?.call(currencies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Currency> currencies)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(currencies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrencyStateInitial value) initial,
    required TResult Function(CurrencyStateLoaded value) loaded,
    required TResult Function(CurrencyStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CurrencyStateInitial value)? initial,
    TResult Function(CurrencyStateLoaded value)? loaded,
    TResult Function(CurrencyStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrencyStateInitial value)? initial,
    TResult Function(CurrencyStateLoaded value)? loaded,
    TResult Function(CurrencyStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CurrencyStateLoaded implements CurrencyState {
  const factory CurrencyStateLoaded(final List<Currency> currencies) =
      _$CurrencyStateLoaded;

  List<Currency> get currencies;
  @JsonKey(ignore: true)
  _$$CurrencyStateLoadedCopyWith<_$CurrencyStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CurrencyStateErrorCopyWith<$Res> {
  factory _$$CurrencyStateErrorCopyWith(_$CurrencyStateError value,
          $Res Function(_$CurrencyStateError) then) =
      __$$CurrencyStateErrorCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

/// @nodoc
class __$$CurrencyStateErrorCopyWithImpl<$Res>
    extends _$CurrencyStateCopyWithImpl<$Res>
    implements _$$CurrencyStateErrorCopyWith<$Res> {
  __$$CurrencyStateErrorCopyWithImpl(
      _$CurrencyStateError _value, $Res Function(_$CurrencyStateError) _then)
      : super(_value, (v) => _then(v as _$CurrencyStateError));

  @override
  _$CurrencyStateError get _value => super._value as _$CurrencyStateError;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_$CurrencyStateError(
      errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CurrencyStateError implements CurrencyStateError {
  const _$CurrencyStateError(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'CurrencyState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrencyStateError &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$CurrencyStateErrorCopyWith<_$CurrencyStateError> get copyWith =>
      __$$CurrencyStateErrorCopyWithImpl<_$CurrencyStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Currency> currencies) loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Currency> currencies)? loaded,
    TResult Function(String errorMessage)? error,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Currency> currencies)? loaded,
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
    required TResult Function(CurrencyStateInitial value) initial,
    required TResult Function(CurrencyStateLoaded value) loaded,
    required TResult Function(CurrencyStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CurrencyStateInitial value)? initial,
    TResult Function(CurrencyStateLoaded value)? loaded,
    TResult Function(CurrencyStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrencyStateInitial value)? initial,
    TResult Function(CurrencyStateLoaded value)? loaded,
    TResult Function(CurrencyStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CurrencyStateError implements CurrencyState {
  const factory CurrencyStateError(final String errorMessage) =
      _$CurrencyStateError;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$CurrencyStateErrorCopyWith<_$CurrencyStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
