import 'package:currency_app/data/api/convert_api.dart';
import 'package:currency_app/data/datasource/local/convert_local_data_source.dart';
import 'package:currency_app/data/dto/convert_response.dart';
import 'package:hive/hive.dart';

class ConvertLocalDataSourceImpl implements ConvertLocalDataSource {
  static const String _boxName = 'convert_response';
  ConvertLocalDataSourceImpl();

  @override
  Future<ConvertResponse?> getResponse({
    required double amount,
    required String from,
    required String to,
    Output? output,
  }) async {
    final box = await Hive.openBox<ConvertResponse>(_boxName);
    final key = '$amount$from$to';
    final response = box.get(key);
    return response;
  }

  @override
  Future<void> save(ConvertResponse response) async {
    final conversion = response.conversion;
    final key = '${conversion.amount}${conversion.from}${conversion.to}';
    final box = await Hive.openBox<ConvertResponse>(_boxName);
    await box.put(key, response);
  }
}
