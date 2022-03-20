import 'package:currency_app/data/api/convert_api.dart';
import 'package:currency_app/data/dto/convert_response.dart';
import 'package:currency_app/data/errors/convert_api_exception.dart';
import 'package:dio/dio.dart';

class ConvertApiImpl implements ConvertApi {
  final String _baseUrl = 'https://currencyapi.net/api/v1';
  final _convertEndpoint = '/convert';
  final _apiKey = 'Z3G6RSKizv7mDWhh447nFOFZG7SStynZpyuG';
  final Dio _dio;

  ConvertApiImpl(this._dio) {
    _dio.options.baseUrl = _baseUrl;
    _dio.options.queryParameters = <String, String>{
      'key': _apiKey,
    };
  }

  @override
  Future<ConvertResponse> convert({
    required double amount,
    required String from,
    required String to,
    Output? output,
  }) async {
    final name = output != null ? output.name : 'JSON';
    final parameters = <String, dynamic>{
      'amount': amount.toString(),
      'from': from,
      'to': to,
      'output': name,
    };

    _dio.options.queryParameters.addAll(parameters);

    late Response<Map<String, dynamic>> response;
    try {
      response = await _dio.get<Map<String, dynamic>>(_convertEndpoint);
    } on DioError catch (e) {
      throw ConvertApiException(
        (e.response as Response<Map<String, dynamic>>)
            .data!['message']
            .toString(),
        (e.response as Response<Map<String, dynamic>>)
            .data!['errors']
            .toString(),
      );
    }

    return ConvertResponse.fromJson(response.data as Map<String, dynamic>);
  }
}
