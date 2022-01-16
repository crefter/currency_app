import 'package:currency_app/domain/entities/currency.dart';
import 'package:currency_app/domain/entities/rate.dart';
import 'package:currency_app/domain/repositories/currency_repository.dart';

class CurrencyService {
  final CurrencyRepository _repository;

  CurrencyService(this._repository);

  Future<List<Currency>> loadCurrencies() {
    return _repository.getCurrencies();
  }

  Future<List<Rate>> loadRatesFor(Currency currency) {
    return _repository.getRates(base: currency.name);
  }

  Future<Rate> findRateFor(Currency currency, {List<Rate>? rates, Currency? defaultCurrency}) async {
    List<Rate>? _rates = rates;
    if (_rates == null) {
      _rates = await loadRatesFor(defaultCurrency!);
    }
    return _rates.firstWhere((element) => element.name == currency.name);
  }
}
