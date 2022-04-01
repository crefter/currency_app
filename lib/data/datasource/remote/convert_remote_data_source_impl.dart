import 'package:currency_app/data/api/convert_api.dart';
import 'package:currency_app/data/datasource/remote/convert_remote_data_source.dart';
import 'package:currency_app/data/dto/convert_response.dart';
import 'package:currency_app/data/errors/convert_api_exception.dart';

class ConvertRemoteDataSourceImpl implements ConvertRemoteDataSource {
  final ConvertApi _api;

  ConvertRemoteDataSourceImpl(this._api);

  @override
  Future<ConvertResponse> getResponse({
    required double amount,
    required String from,
    required String to,
    Output? output,
  }) async {
    late final ConvertResponse convertResponse;
    try {
      convertResponse = await _api.convert(
        amount: amount,
        from: from,
        to: to,
        output: output,
      );
    } on ConvertApiException {
      rethrow;
    }

    return convertResponse;
  }
}
