import 'package:currency_app/data/api/convert_api.dart';
import 'package:currency_app/data/dto/convert_response.dart';
import 'package:currency_app/data/errors/currency_api_exception.dart';
import 'package:currency_app/domain/entities/currency.dart';
import 'package:dio/dio.dart';

class ConvertApiImpl implements ConvertApi {
  final String _baseUrl = 'https://currencyapi.net/api/v1';
  final _convertEndpoint = '/convert';
  final _apiKey = 'Z3G6RSKizv7mDWhh447nFOFZG7SStynZpyuG';
  final Dio _dio;

  ConvertApiImpl(this._dio) {
    _dio.options.baseUrl = _baseUrl;
    _dio.options.queryParameters = {
      'key': _apiKey,
    };
  }

  @override
  Future<ConvertResponse> convert({
    required double amount,
    required Currency from,
    required Currency to,
    OutputEnum output = OutputEnum.json,
  }) async {
    final Map<String, dynamic> parameters = {
      'amount': amount.toString(),
      'from': from.name,
      'to': to.name,
      'output': Output.create(output).name,
    };

    _dio.options.queryParameters.addAll(parameters);

    late Response<dynamic> response;
    try {
      response = await _dio.get(_convertEndpoint);
    } on DioError catch (e) {
      throw CurrencyApiException(
          e.response!.data['message'], e.response!.data['errors'].toString());
    }

    return ConvertResponse.fromJson(response.data);
  }
}
