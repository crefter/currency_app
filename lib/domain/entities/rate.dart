import 'package:json_annotation/json_annotation.dart';

part 'rate.g.dart';

@JsonSerializable()
class Rate {
  final String name;
  final double value;

  Rate(this.name, this.value);

  factory Rate.fromJson(Map<String, dynamic> json) => _$RateFromJson(json);

  Map<String, dynamic> toJson(Rate rate) => _$RateToJson(rate);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Rate &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          value == other.value;

  @override
  int get hashCode => name.hashCode ^ value.hashCode;
}