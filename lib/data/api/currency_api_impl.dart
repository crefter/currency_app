import 'package:currency_app/data/api/currency_api.dart';
import 'package:currency_app/data/dto/currency_rates_response.dart';
import 'package:currency_app/data/dto/currency_response.dart';
import 'package:currency_app/data/errors/currency_api_exception.dart';
import 'package:dio/dio.dart';

class CurrencyApiImpl implements CurrencyApi {
  final String _baseUrl = 'https://currencyapi.net/api/v1';
  final _ratesEndpoint = '/rates';
  final _currenciesEndpoint = '/currencies';
  final _apiKey = 'Z3G6RSKizv7mDWhh447nFOFZG7SStynZpyuG';
  final Dio _dio;

  CurrencyApiImpl(this._dio) {
    _dio.options.baseUrl = _baseUrl;
    _dio.options.queryParameters = <String, String>{
      'key': _apiKey,
      'output': 'JSON',
    };
  }

  @override
  Future<CurrencyResponse> getCurrencies() async {
    late Response<Map<String, dynamic>> response;
    try {
      response = await _dio.get(_currenciesEndpoint);
    } on DioError {
      rethrow;
    }
    return CurrencyResponse.fromJson(response.data as Map<String, dynamic>);
  }

  @override
  Future<CurrencyRatesResponse> getCurrencyRatesFor({
    required String base,
  }) async {
    late Response<Map<String, dynamic>> response;
    try {
      final baseParameter = {'base': base};
      _dio.options.queryParameters.addAll(baseParameter);
      response = await _dio.get<Map<String, dynamic>>(_ratesEndpoint);
    } on DioError catch (e) {
      final data = e.response?.data as Map<String, dynamic>;
      final error = data['error'] as Map<String, dynamic>;
      final errorCode = error['code'].toString();
      final errorDescription = error['message'].toString();
      throw CurrencyApiException(errorCode, errorDescription);
    }
    return CurrencyRatesResponse.fromJson(
      response.data as Map<String, dynamic>,
    );
  }
}
