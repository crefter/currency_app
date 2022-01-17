import 'package:currency_app/data/dto/currency_rates_response.dart';
import 'package:currency_app/data/dto/currency_response.dart';

abstract class CurrencyApi {
  Future<CurrencyResponse> getCurrencies();

  Future<CurrencyRatesResponse> getCurrencyRatesFor({required String base});
}
