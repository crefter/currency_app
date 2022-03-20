import 'package:currency_app/domain/entities/currency.dart';
import 'package:currency_app/domain/repositories/currency_repository.dart';

class LoadCurrenciesUseCase {
  final CurrencyRepository _repository;

  LoadCurrenciesUseCase(this._repository);

  Future<List<Currency>> call() async {
    return _repository.getCurrencies();
  }
}