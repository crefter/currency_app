import 'package:currency_app/domain/entities/conversion.dart';
import 'package:currency_app/domain/entities/currency.dart';
import 'package:currency_app/domain/repositories/convert_repository.dart';

class ConvertCurrenciesUseCase {
  final ConvertRepository _convertRepository;

  ConvertCurrenciesUseCase(this._convertRepository);

  Future<Conversion> call({
    required double amount,
    required Currency from,
    required Currency to,
  }) {
    return _convertRepository.convert(amount: amount, from: from, to: to);
  }
}
