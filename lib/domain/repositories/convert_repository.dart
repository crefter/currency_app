import 'package:currency_app/data/api/convert_api.dart';
import 'package:currency_app/domain/entities/conversion.dart';
import 'package:currency_app/domain/entities/currency.dart';

abstract class ConvertRepository {
  Future<Conversion> convert({
    required double amount,
    required Currency from,
    required Currency to,
    Output? output,
  });

  Future<void> save(Conversion conversion);
}
