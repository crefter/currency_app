import 'package:json_annotation/json_annotation.dart';

part 'currency_response.g.dart';

@JsonSerializable()
class CurrencyResponse {
  final Map<String, String> currencies;

  CurrencyResponse(this.currencies);

  factory CurrencyResponse.fromJson(Map<String, dynamic> json) =>
      _$CurrencyResponseFromJson(json);

  Map<String, dynamic> toJson(CurrencyResponse currencyResponse) =>
      _$CurrencyResponseToJson(currencyResponse);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CurrencyResponse &&
          runtimeType == other.runtimeType &&
          currencies == other.currencies;

  @override
  int get hashCode => currencies.hashCode;
}
