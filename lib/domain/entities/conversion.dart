import 'package:json_annotation/json_annotation.dart';

part 'conversion.g.dart';

@JsonSerializable()
class Conversion {
  final double amount;
  final String from;
  final String to;
  final double result;

  Conversion(this.amount, this.from, this.to, this.result);

  Conversion _$ConversionFromJson(Map<String, dynamic> json) =>
      _$ConversionFromJson(json);

  Map<String, dynamic> _$ConversionToJson(Conversion instance) =>
      _$ConversionToJson(instance);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Conversion &&
          runtimeType == other.runtimeType &&
          amount == other.amount &&
          from == other.from &&
          to == other.to &&
          result == other.result;

  @override
  int get hashCode =>
      amount.hashCode ^ from.hashCode ^ to.hashCode ^ result.hashCode;
}
