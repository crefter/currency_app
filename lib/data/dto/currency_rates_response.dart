import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';

part 'currency_rates_response.g.dart';

@immutable
@JsonSerializable(explicitToJson: true)
class CurrencyRatesResponse {
  final Map<String, num> rates;

  @override
  int get hashCode => rates.hashCode;

  const CurrencyRatesResponse(this.rates);

  factory CurrencyRatesResponse.fromJson(Map<String, dynamic> json) =>
      _$CurrencyRatesResponseFromJson(json);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CurrencyRatesResponse &&
          runtimeType == other.runtimeType &&
          rates == other.rates;

  Map<String, dynamic> toJson(CurrencyRatesResponse currencyRatesResponse) =>
      _$CurrencyRatesResponseToJson(currencyRatesResponse);
}
