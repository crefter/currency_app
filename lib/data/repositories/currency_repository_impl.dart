import 'package:currency_app/data/api/currency_api.dart';
import 'package:currency_app/data/dto/currency_rates_response.dart';
import 'package:currency_app/data/dto/currency_response.dart';
import 'package:currency_app/domain/entities/currency.dart';
import 'package:currency_app/domain/entities/rate.dart';
import 'package:currency_app/domain/repositories/currency_repository.dart';

class CurrencyRepositoryImpl implements CurrencyRepository {
  final CurrencyApi _currencyApi;

  CurrencyRepositoryImpl(this._currencyApi);

  @override
  Future<List<Currency>> getCurrencies() async {
    late CurrencyResponse currencyResponse;
    try {
      currencyResponse = await _currencyApi.getCurrencies();
    } on Exception {
      rethrow;
    }
    final apiCurrencies = currencyResponse.currencies;
    final entries = apiCurrencies.entries;

    final resultCurrency =
        entries.map((e) => Currency(e.key, e.value)).toList();
    return resultCurrency;
  }

  @override
  Future<List<Rate>> getRatesFor({required String base}) async {
    late CurrencyRatesResponse currencyRatesResponse;
    try {
      currencyRatesResponse =
          await _currencyApi.getCurrencyRatesFor(base: base);
    } on Exception {
      rethrow;
    }
    final rates = currencyRatesResponse.rates;
    final entries = rates.entries;

    final resultRates = entries.map((e) => Rate(e.key, e.value)).toList();
    return resultRates;
  }
}
