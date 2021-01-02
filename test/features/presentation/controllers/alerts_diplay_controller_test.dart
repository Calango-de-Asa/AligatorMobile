import 'package:AligatorMobile/core/errors/failure.dart';
import 'package:AligatorMobile/features/domain/entities/alert.dart';
import 'package:AligatorMobile/features/domain/entities/person.dart';
import 'package:AligatorMobile/features/domain/use_cases/get_all_alerts.dart';
import 'package:AligatorMobile/features/presentation/controllers/alerts_display_controller.dart';
import 'package:AligatorMobile/features/presentation/controllers/alerts_state.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class GetAllAlertsMock extends Mock implements GetAllAlerts {}

main() {
  GetAllAlerts getAllAlerts;
  AlertsDisplayController alertsDisplayController;

  setUp(() {
    getAllAlerts = GetAllAlertsMock();
    alertsDisplayController = AlertsDisplayController(getAllAlerts);
  });

  final List<Alert> alerts = [
    Alert(
        message: 'Bilu Bilau',
        created: DateTime.utc(2000),
        postedBy: Person(name: 'Scarlet')),
    Alert(
        message: 'Tem um passaro na minha janela',
        created: DateTime.utc(2007),
        postedBy: Person(name: 'Bach')),
  ];

  final failure = RepositoryFailure(message: "i'm a generic failure");

  group('fetchData', () {
    test('should get a loaded state with a empty array, without a fetch', () {
      final alert = alertsDisplayController.alertsState;

      verifyNever(getAllAlerts(any));

      expect(alert, isInstanceOf<Loaded>());
      if (alert is Loaded) expect(alert.alerts, []);
    });

    test('should fetch the data with the use case', () async {
      when(getAllAlerts(any)).thenAnswer((_) async => Right(alerts));

      await alertsDisplayController.fetchData();

      final alert = alertsDisplayController.alertsState;

      expect(alert, isInstanceOf<Loaded>());
      if (alert is Loaded) expect(alert.alerts, equals(alerts));

      verify(getAllAlerts(any)).called(1);
      verifyNoMoreInteractions(getAllAlerts);
    });

    test('should state be error when error in fetching', () async {
      when(getAllAlerts(any)).thenAnswer((_) async => Left(failure));

      await alertsDisplayController.fetchData();

      final alert = alertsDisplayController.alertsState;

      expect(alert, isInstanceOf<Error>());

      verify(getAllAlerts(any)).called(1);
      verifyNoMoreInteractions(getAllAlerts);
    });

    test('should set Loading with fetching the data', () async {
      when(getAllAlerts(any)).thenAnswer((_) async {
        await Future.delayed(Duration(seconds: 2));
        return Right(alerts);
      });

      final future = alertsDisplayController.fetchData();

      var alert = alertsDisplayController.alertsState;
      expect(alert, isInstanceOf<Loading>());

      await future;
      alert = alertsDisplayController.alertsState;

      expect(alert, isInstanceOf<Loaded>());

      verify(getAllAlerts(any)).called(1);
      verifyNoMoreInteractions(getAllAlerts);
    });
  });
}
