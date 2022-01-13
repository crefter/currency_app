import 'package:currency_app/data/dto/currency_rates_response.dart';
import 'package:currency_app/data/dto/currency_response.dart';

abstract class CurrencyApi {
  static const String base = 'https://currencyapi.net';

  Future<CurrencyResponse> getCurrencies();

  Future<CurrencyRatesResponse> getCurrencyRates({required String base});
}