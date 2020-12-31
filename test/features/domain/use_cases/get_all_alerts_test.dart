import 'package:AligatorMobile/core/use_cases/no_params.dart';
import 'package:AligatorMobile/features/domain/entities/alert.dart';
import 'package:AligatorMobile/features/domain/entities/person.dart';
import 'package:AligatorMobile/features/domain/repositories/alert_repository.dart';
import 'package:AligatorMobile/features/domain/use_cases/get_all_alerts.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class AlertRepositoryMock extends Mock implements AlertRepository {}

main() {
  AlertRepository alertRepository;
  GetAllAlerts getAllAlerts;

  setUp(() {
    alertRepository = AlertRepositoryMock();
    getAllAlerts = GetAllAlerts(alertRepository);
  });

  final noAlerts = <Alert>[];
  final alerts = [
    Alert(
      message: 'BiluBilau',
      created: DateTime.utc(2000),
      postedBy: Person(name: 'George'),
    ),
    Alert(
      message: 'Blau Balue',
      created: DateTime.utc(2001),
      postedBy: Person(name: 'Catharina'),
    ),
  ];

  group('GetAllAlerts', () {
    test('should get an empty list of alerts', () async {
      when(alertRepository.getAllAlerts()).thenAnswer((_) async => Right(noAlerts));

      final emptyAlerts = await getAllAlerts(NoParams());

      expect(emptyAlerts, Right(noAlerts));
      verify(alertRepository.getAllAlerts()).called(1);
      verifyNoMoreInteractions(alertRepository);
    });

    test('should get an list with alerts', () async {
      when(alertRepository.getAllAlerts()).thenAnswer((_) async => Right(alerts));

      final emptyAlerts = await getAllAlerts(NoParams());

      expect(emptyAlerts, Right(alerts));
      verify(alertRepository.getAllAlerts()).called(1);
      verifyNoMoreInteractions(alertRepository);
    });
  });
}
