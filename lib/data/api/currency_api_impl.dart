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
    _dio.options.queryParameters = {
      'key': _apiKey,
      'output': 'JSON',
    };
  }

  @override
  Future<CurrencyResponse> getCurrencies() async {
    late Response<dynamic> response;
    try {
      response = await _dio.get(_currenciesEndpoint);
    } catch (e) {
      rethrow;
    }
    return CurrencyResponse.fromJson(response.data);
  }

  @override
  Future<CurrencyRatesResponse> getCurrencyRatesFor(
      {required String base}) async {
    late Response<dynamic> response;
    try {
      final baseParameter = {'base': base};
      _dio.options.queryParameters.addAll(baseParameter);
      response = await _dio.get(_ratesEndpoint);
    } on DioError catch (e) {
      final errorCode = e.response!.data['error']['code'];
      final errorDescription =
          e.response!.data['error']['message'];
      throw CurrencyApiException(errorCode, errorDescription);
    }
    return CurrencyRatesResponse.fromJson(response.data);
  }
}
