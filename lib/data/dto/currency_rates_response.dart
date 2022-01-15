import 'package:json_annotation/json_annotation.dart';

part 'currency_rates_response.g.dart';

@JsonSerializable()
class CurrencyRatesResponse {
  final Map<String, double> rates;

  CurrencyRatesResponse(this.rates);

  factory CurrencyRatesResponse.fromJson(Map<String, dynamic> json) =>
      _$CurrencyRatesResponseFromJson(json);

  Map<String, dynamic> toJson(CurrencyRatesResponse currencyRatesResponse) =>
      _$CurrencyRatesResponseToJson(currencyRatesResponse);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CurrencyRatesResponse &&
          runtimeType == other.runtimeType &&
          rates == other.rates;

  @override
  int get hashCode => rates.hashCode;
}
