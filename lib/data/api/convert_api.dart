import 'package:currency_app/data/dto/convert_response.dart';
import 'package:currency_app/domain/entities/currency.dart';

abstract class ConvertApi {
  Future<ConvertResponse> convert({
    required double amount,
    required Currency from,
    required Currency to,
    Output? output,
  });
}

enum OutputEnum { json, xml }

class Output {
  final String name;

  factory Output.create(OutputEnum outputEnum) {
    switch (outputEnum) {
      case OutputEnum.json:
        return Output('JSON');
      case OutputEnum.xml:
        return Output('XML');
    }
  }

  Output(this.name);
}
