import 'package:json_annotation/json_annotation.dart';

part 'rate.g.dart';

@JsonSerializable()
class Rate {
  final String name;
  final double value;

  Rate(this.name, this.value);

  factory Rate.fromJson(Map<String, dynamic> json) => _$RateFromJson(json);

  Map<String, dynamic> toJson(Rate rate) => _$RateToJson(rate);
}