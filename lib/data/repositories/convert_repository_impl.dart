import 'package:currency_app/data/api/convert_api.dart';
import 'package:currency_app/data/dto/convert_response.dart';
import 'package:currency_app/domain/entities/conversion.dart';
import 'package:currency_app/domain/entities/currency.dart';
import 'package:currency_app/domain/repositories/convert_repository.dart';

class ConvertRepositoryImpl implements ConvertRepository {
  final ConvertApi _convertApi;

  ConvertRepositoryImpl(this._convertApi);

  @override
  Future<Conversion> convert({
    required double amount,
    required Currency from,
    required Currency to,
    Output? output,
  }) async {
    late ConvertResponse convertResponse;
    try {
      convertResponse = await _convertApi.convert(
          amount: amount,
          from: from,
          to: to,
          output: Output.create(OutputEnum.json));

      return Conversion(
        convertResponse.conversion.result,
        convertResponse.conversion.from,
        convertResponse.conversion.to,
        convertResponse.conversion.result,
      );
    } catch (e) {
      rethrow;
    }
  }
}
