import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';

part 'convert_response.g.dart';

@immutable
@HiveType(typeId: 1)
class ConvertResponse {
  @HiveField(0)
  final ConversionResponse conversion;

  @override
  int get hashCode => conversion.hashCode;

  const ConvertResponse({
    required this.conversion,
  });

  factory ConvertResponse.fromJson(Map<String, dynamic> json) {
    return ConvertResponse(
      conversion: ConversionResponse.fromJson(
        json['conversion'] as Map<String, dynamic>,
      ),
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ConvertResponse &&
          runtimeType == other.runtimeType &&
          conversion == other.conversion;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['conversion'] = conversion.toJson();
    return map;
  }
}

@immutable
@HiveType(typeId: 2)
class ConversionResponse {
  @HiveField(0)
  final double amount;
  @HiveField(1)
  final String from;
  @HiveField(2)
  final String to;
  @HiveField(3)
  final double result;

  @override
  int get hashCode =>
      amount.hashCode ^ from.hashCode ^ to.hashCode ^ result.hashCode;

  const ConversionResponse({
    required this.amount,
    required this.from,
    required this.to,
    required this.result,
  });

  factory ConversionResponse.fromJson(Map<String, dynamic> json) {
    return ConversionResponse(
      amount: json['amount'] as double,
      from: json['from'] as String,
      to: json['to'] as String,
      result: json['result'] as double,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ConversionResponse &&
          runtimeType == other.runtimeType &&
          amount == other.amount &&
          from == other.from &&
          to == other.to &&
          result == other.result;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['amount'] = amount;
    map['from'] = from;
    map['to'] = to;
    map['result'] = result;
    return map;
  }
}
