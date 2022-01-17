import 'package:currency_app/domain/entities/currency.dart';
import 'package:currency_app/domain/entities/rate.dart';
import 'package:currency_app/domain/repositories/currency_repository.dart';

class LoadRatesForCurrencyUseCase {
  final CurrencyRepository _repository;

  LoadRatesForCurrencyUseCase(this._repository);

  Future<List<Rate>> call({required Currency currency}) async {
    return await _repository.getRatesFor(base: currency.name);
  }
}