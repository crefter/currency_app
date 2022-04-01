import 'package:currency_app/domain/entities/conversion.dart';
import 'package:currency_app/domain/repositories/convert_repository.dart';

class SaveConvertResponseUseCase {
  final ConvertRepository _repository;

  SaveConvertResponseUseCase(this._repository);

  Future<void> call(Conversion conversion) async {
    await _repository.save(conversion);
  }
}