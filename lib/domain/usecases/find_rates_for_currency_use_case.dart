import 'package:currency_app/domain/entities/rate.dart';
import 'package:currency_app/domain/usecases/load_rates_for_currency_use_case.dart';

class FindRatesForCurrencyUseCase {
  final LoadRatesForCurrencyUseCase _loadRatesUseCase;

  FindRatesForCurrencyUseCase(this._loadRatesUseCase);

  /// Find rates for [currency] in [rates].
  /// If rates is empty then load rates for [defaultCurrency].
  /// If [rates] is empty [defaultCurrency] cant be null.
  Future<List<Rate>> call(
    String currency,
    List<Rate> rates, {
    String defaultCurrency = 'USD',
  }) async {
    var _rates = rates;
    if (_rates.isEmpty) {
      _rates = await _loadRatesUseCase(currency: defaultCurrency);
    }
    return _rates
        .where((element) =>
            element.name.toLowerCase().contains(currency.toLowerCase()))
        .toList();
  }
}
