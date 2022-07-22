// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'convert_currencies_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ConvertCurrenciesState {
  String get exception => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  Currency get from => throw _privateConstructorUsedError;
  Currency get to => throw _privateConstructorUsedError;
  ConvertCurrenciesStatus get status => throw _privateConstructorUsedError;
  Conversion get answer => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConvertCurrenciesStateCopyWith<ConvertCurrenciesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConvertCurrenciesStateCopyWith<$Res> {
  factory $ConvertCurrenciesStateCopyWith(ConvertCurrenciesState value,
          $Res Function(ConvertCurrenciesState) then) =
      _$ConvertCurrenciesStateCopyWithImpl<$Res>;
  $Res call(
      {String exception,
      double amount,
      Currency from,
      Currency to,
      ConvertCurrenciesStatus status,
      Conversion answer});
}

/// @nodoc
class _$ConvertCurrenciesStateCopyWithImpl<$Res>
    implements $ConvertCurrenciesStateCopyWith<$Res> {
  _$ConvertCurrenciesStateCopyWithImpl(this._value, this._then);

  final ConvertCurrenciesState _value;
  // ignore: unused_field
  final $Res Function(ConvertCurrenciesState) _then;

  @override
  $Res call({
    Object? exception = freezed,
    Object? amount = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? status = freezed,
    Object? answer = freezed,
  }) {
    return _then(_value.copyWith(
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as Currency,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as Currency,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ConvertCurrenciesStatus,
      answer: answer == freezed
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as Conversion,
    ));
  }
}

/// @nodoc
abstract class _$$_ConvertCurrenciesStateCopyWith<$Res>
    implements $ConvertCurrenciesStateCopyWith<$Res> {
  factory _$$_ConvertCurrenciesStateCopyWith(_$_ConvertCurrenciesState value,
          $Res Function(_$_ConvertCurrenciesState) then) =
      __$$_ConvertCurrenciesStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String exception,
      double amount,
      Currency from,
      Currency to,
      ConvertCurrenciesStatus status,
      Conversion answer});
}

/// @nodoc
class __$$_ConvertCurrenciesStateCopyWithImpl<$Res>
    extends _$ConvertCurrenciesStateCopyWithImpl<$Res>
    implements _$$_ConvertCurrenciesStateCopyWith<$Res> {
  __$$_ConvertCurrenciesStateCopyWithImpl(_$_ConvertCurrenciesState _value,
      $Res Function(_$_ConvertCurrenciesState) _then)
      : super(_value, (v) => _then(v as _$_ConvertCurrenciesState));

  @override
  _$_ConvertCurrenciesState get _value =>
      super._value as _$_ConvertCurrenciesState;

  @override
  $Res call({
    Object? exception = freezed,
    Object? amount = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? status = freezed,
    Object? answer = freezed,
  }) {
    return _then(_$_ConvertCurrenciesState(
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as Currency,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as Currency,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ConvertCurrenciesStatus,
      answer: answer == freezed
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as Conversion,
    ));
  }
}

/// @nodoc

class _$_ConvertCurrenciesState implements _ConvertCurrenciesState {
  const _$_ConvertCurrenciesState(
      {this.exception = '',
      this.amount = 0,
      this.from = Currency.empty,
      this.to = Currency.empty,
      this.status = ConvertCurrenciesStatus.initial,
      this.answer = Conversion.empty});

  @override
  @JsonKey()
  final String exception;
  @override
  @JsonKey()
  final double amount;
  @override
  @JsonKey()
  final Currency from;
  @override
  @JsonKey()
  final Currency to;
  @override
  @JsonKey()
  final ConvertCurrenciesStatus status;
  @override
  @JsonKey()
  final Conversion answer;

  @override
  String toString() {
    return 'ConvertCurrenciesState(exception: $exception, amount: $amount, from: $from, to: $to, status: $status, answer: $answer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConvertCurrenciesState &&
            const DeepCollectionEquality().equals(other.exception, exception) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.from, from) &&
            const DeepCollectionEquality().equals(other.to, to) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.answer, answer));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(exception),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(from),
      const DeepCollectionEquality().hash(to),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(answer));

  @JsonKey(ignore: true)
  @override
  _$$_ConvertCurrenciesStateCopyWith<_$_ConvertCurrenciesState> get copyWith =>
      __$$_ConvertCurrenciesStateCopyWithImpl<_$_ConvertCurrenciesState>(
          this, _$identity);
}

abstract class _ConvertCurrenciesState implements ConvertCurrenciesState {
  const factory _ConvertCurrenciesState(
      {final String exception,
      final double amount,
      final Currency from,
      final Currency to,
      final ConvertCurrenciesStatus status,
      final Conversion answer}) = _$_ConvertCurrenciesState;

  @override
  String get exception;
  @override
  double get amount;
  @override
  Currency get from;
  @override
  Currency get to;
  @override
  ConvertCurrenciesStatus get status;
  @override
  Conversion get answer;
  @override
  @JsonKey(ignore: true)
  _$$_ConvertCurrenciesStateCopyWith<_$_ConvertCurrenciesState> get copyWith =>
      throw _privateConstructorUsedError;
}
