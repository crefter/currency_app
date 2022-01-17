import 'package:currency_app/domain/entities/currency.dart';
import 'package:currency_app/domain/entities/rate.dart';
import 'package:currency_app/domain/usecases/load_rates_for_currency_use_case.dart';

class FindRateForCurrencyUseCase {
  final LoadRatesForCurrencyUseCase _loadRatesUseCase;

  FindRateForCurrencyUseCase(this._loadRatesUseCase);

  /// Find rate for [currency] in [rates].
  /// If rates is empty then load rates for [defaultCurrency].
  /// If [rates] is empty [defaultCurrency] cant be null.
  Future<Rate> call(Currency currency, List<Rate> rates,
      {Currency defaultCurrency = const Currency('USD', 'United States Dollar')}) async {
    List<Rate> _rates = rates;
    if (_rates.isEmpty) {
      _rates = await _loadRatesUseCase(currency: defaultCurrency);
    }
    return _rates.firstWhere((element) => element.name == currency.name);
  }
}
