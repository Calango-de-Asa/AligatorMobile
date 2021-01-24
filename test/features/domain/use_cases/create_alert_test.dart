import 'package:AligatorMobile/core/use_cases/success.dart';
import 'package:AligatorMobile/features/domain/entities/person.dart';
import 'package:AligatorMobile/features/domain/repositories/alert_repository.dart';
import 'package:AligatorMobile/features/domain/repositories/person_repository.dart';
import 'package:AligatorMobile/features/domain/use_cases/create_alert.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class AlertRepositoryMock extends Mock implements AlertRepository {}

class PersonRepositoryMock extends Mock implements PersonRepository {}

main() {
  AlertRepository alertRepository;
  PersonRepository personRepository;
  CreateAlert createAlert;

  setUp(() {
    alertRepository = AlertRepositoryMock();
    personRepository = PersonRepositoryMock();
    createAlert = CreateAlert(alertRepository, personRepository);
  });

  group('CreateAlert', () {
    final personName = 'George';

    final params = CreateAlertParams(
      message: 'Bilu bilau',
    );

    final person = Person(name: personName);

    test('should create and alert', () async {
      when(personRepository.getLoggedPerson())
          .thenAnswer((_) async => Right(person));
      when(alertRepository.createAlert(any, any, any))
          .thenAnswer((_) async => Right(Success()));

      final answer = await createAlert(params);

      expect(answer, equals(Right(Success())));

      verify(personRepository.getLoggedPerson()).called(1);
      verifyNoMoreInteractions(personRepository);

      verify(alertRepository.createAlert(params.message, any, person))
          .called(1);
      verifyNoMoreInteractions(alertRepository);
    });
  });
}
