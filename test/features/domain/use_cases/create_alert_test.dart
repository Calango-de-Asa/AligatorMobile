import 'package:AligatorMobile/features/domain/repositories/alert_repository.dart';
import 'package:AligatorMobile/features/domain/use_cases/create_alert.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class AlertRepositoryMock extends Mock implements AlertRepository {}

main() {
    AlertRepository alertRepository;
    CreateAlert createAlert;

    setUp(() {
        alertRepository = AlertRepositoryMock();
        createAlert = CreateAlert();
    });
}
