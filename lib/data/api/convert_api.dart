import 'package:currency_app/data/dto/convert_response.dart';

abstract class ConvertApi {
  Future<ConvertResponse> convert({
    required double amount,
    required String from,
    required String to,
    Output? output,
  });
}

enum OutputEnum { json, xml }

class Output {
  final String name;

  Output(this.name);

  factory Output.create(OutputEnum outputEnum) {
    switch (outputEnum) {
      case OutputEnum.json:
        return Output('JSON');
      case OutputEnum.xml:
        return Output('XML');
    }
  }
}
