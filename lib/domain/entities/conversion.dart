import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';

part 'conversion.g.dart';

@immutable
@JsonSerializable()
class Conversion {
  static const empty = Conversion(0, '', '', 0);

  final double amount;
  final String from;
  final String to;
  final double result;

  @override
  int get hashCode =>
      amount.hashCode ^ from.hashCode ^ to.hashCode ^ result.hashCode;

  const Conversion(this.amount, this.from, this.to, this.result);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Conversion &&
              runtimeType == other.runtimeType &&
              amount == other.amount &&
              from == other.from &&
              to == other.to &&
              result == other.result;

  Conversion _$ConversionFromJson(Map<String, dynamic> json) =>
      _$ConversionFromJson(json);

  Map<String, dynamic> _$ConversionToJson(Conversion instance) =>
      _$ConversionToJson(instance);
}
