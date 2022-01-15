import 'package:currency_app/data/api/currency_api.dart';
import 'package:currency_app/data/dto/currency_rates_response.dart';
import 'package:currency_app/data/dto/currency_response.dart';
import 'package:dio/dio.dart';

class CurrencyApiImpl implements CurrencyApi {
  final String _baseUrl = 'https://currencyapi.net/api/v1';
  final Dio _dio;

  CurrencyApiImpl(this._dio) {
    _dio.options.baseUrl = _baseUrl;
    _dio.options.queryParameters = {
      'key': 'Z3G6RSKizv7mDWhh447nFOFZG7SStynZpyuG',
      'output': 'JSON'
    };
  }

  @override
  Future<CurrencyResponse> getCurrencies() async {
    late Response<dynamic> response;
    try {
      response = await _dio.get('/currencies');
    } catch (e) {
      rethrow;
    }
    return CurrencyResponse.fromJson(response.data);
  }

  @override
  Future<CurrencyRatesResponse> getCurrencyRates({required String base}) async {
    late Response<dynamic> response;
    try {
      response = await _dio.get('/rates');
    } catch (e) {
      rethrow;
    }
    return CurrencyRatesResponse.fromJson(response.data);
  }
}
