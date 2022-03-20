import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';

part 'currency_response.g.dart';

@immutable
@JsonSerializable()
class CurrencyResponse {
  final Map<String, String> currencies;

  @override
  int get hashCode => currencies.hashCode;

  const CurrencyResponse(this.currencies);

  factory CurrencyResponse.fromJson(Map<String, dynamic> json) =>
      _$CurrencyResponseFromJson(json);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is CurrencyResponse &&
              runtimeType == other.runtimeType &&
              currencies == other.currencies;

  Map<String, dynamic> toJson(CurrencyResponse currencyResponse) =>
      _$CurrencyResponseToJson(currencyResponse);
}
