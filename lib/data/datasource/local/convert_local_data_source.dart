import 'package:currency_app/data/api/convert_api.dart';
import 'package:currency_app/data/dto/convert_response.dart';

abstract class ConvertLocalDataSource {
  Future<ConvertResponse?> getResponse({
    required double amount,
    required String from,
    required String to,
    Output? output,
  });

  Future<void> save(ConvertResponse response);
}
