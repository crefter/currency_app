import 'package:currency_app/data/api/currency_api.dart';
import 'package:currency_app/data/repositories/currency_repository.dart';
import 'package:currency_app/domain/entities/currency.dart';
import 'package:currency_app/domain/entities/rate.dart';

class CurrencyRepositoryImpl implements CurrencyRepository {
  final CurrencyApi _currencyApi;

  CurrencyRepositoryImpl(this._currencyApi);

  @override
  Future<List<Currency>> getCurrencies() async {
    final currencyResponse = await _currencyApi.getCurrencies();
    final apiCurrencies = currencyResponse.currencies;
    final entries = apiCurrencies.entries;

    return Future(() => entries.map((e) => Currency(e.key, e.value)).toList());
  }

  @override
  Future<List<Rate>> getRates({required String base}) async {
    final currencyRatesResponse = await _currencyApi.getCurrencyRates(base: 'USD');
    final rates = currencyRatesResponse.rates;
    final entries = rates.entries;

    return Future(() => entries.map((e) => Rate(e.key, e.value)).toList());
  }
}
