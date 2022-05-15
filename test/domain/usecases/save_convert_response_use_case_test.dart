import 'package:currency_app/domain/entities/conversion.dart';
import 'package:currency_app/domain/repositories/convert_repository.dart';
import 'package:currency_app/domain/usecases/save_convertion_response_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import '../../data/repositories/convert_repository_test.mocks.dart';

void main() {
  final ConvertRepository repository = MockConvertRepository();
  final useCase = SaveConvertionResponseUseCase(repository);

  test('should save ConvertResponse locally', () async {
    const conversion = Conversion(10, 'USD', 'EUR', 8);
    when(
      repository.save(
        conversion,
      ),
    ).thenAnswer(
      (realInvocation) => Future<void>(
        () {},
      ),
    );
    await useCase(conversion);
    verify(useCase(conversion)).called(1);
  });
}
