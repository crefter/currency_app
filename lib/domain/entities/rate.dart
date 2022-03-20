import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';

part 'rate.g.dart';

@immutable
@JsonSerializable()
class Rate {
  final String name;
  final num value;

  @override
  int get hashCode => name.hashCode ^ value.hashCode;

  Rate(this.name, this.value);

  factory Rate.fromJson(Map<String, dynamic> json) => _$RateFromJson(json);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Rate &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          value == other.value;

  @override
  String toString() {
    return '"code" : $name, "value" : $value}';
  }

  Map<String, dynamic> toJson(Rate rate) => _$RateToJson(rate);
}
