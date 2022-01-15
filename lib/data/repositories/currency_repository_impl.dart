import 'package:currency_app/data/api/currency_api.dart';
import 'package:currency_app/data/dto/currency_rates_response.dart';
import 'package:currency_app/data/dto/currency_response.dart';
import 'package:currency_app/domain/repositories/currency_repository.dart';
import 'package:currency_app/domain/entities/currency.dart';
import 'package:currency_app/domain/entities/rate.dart';

class CurrencyRepositoryImpl implements CurrencyRepository {
  final CurrencyApi _currencyApi;

  CurrencyRepositoryImpl(this._currencyApi);

  @override
  Future<List<Currency>> getCurrencies() async {
    late CurrencyResponse currencyResponse;
    try {
      currencyResponse = await _currencyApi.getCurrencies();
    } catch (e) {
      print(e);
    }
      final apiCurrencies = currencyResponse.currencies;
      final entries = apiCurrencies.entries;

      var resultCurrency = entries.map((e) => Currency(e.key, e.value))
          .toList();
    return resultCurrency;
  }

  @override
  Future<List<Rate>> getRates({required String base}) async {
    late CurrencyRatesResponse currencyRatesResponse;
    try {
      currencyRatesResponse =
      await _currencyApi.getCurrencyRates(base: 'USD');
    } catch (e) {
      print(e);
    }
    final rates = currencyRatesResponse.rates;
    final entries = rates.entries;

    var resultRates = entries.map((e) => Rate(e.key, e.value)).toList();
    return resultRates;
  }
}
