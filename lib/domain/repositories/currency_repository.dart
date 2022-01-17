import 'dart:core';

import 'package:currency_app/domain/entities/currency.dart';
import 'package:currency_app/domain/entities/rate.dart';

abstract class CurrencyRepository {
  Future<List<Currency>> getCurrencies();

  Future<List<Rate>> getRatesFor({required String base});
}
