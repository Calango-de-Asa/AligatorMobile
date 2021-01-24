import 'package:AligatorMobile/core/errors/failure.dart';
import 'package:AligatorMobile/core/use_cases/success.dart';
import 'package:AligatorMobile/features/domain/entities/alert.dart';
import 'package:AligatorMobile/features/domain/entities/person.dart';
import 'package:AligatorMobile/features/domain/repositories/alert_repository.dart';
import 'package:dartz/dartz.dart';

class AlertRepositoryImpl extends AlertRepository {
  @override
  Future<Either<Failure, Success>> createAlert(String message, DateTime created, Person person) {
    // TODO: implement createAlert
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Alert>>> getAllAlerts() {
    // TODO: implement getAllAlerts
    throw UnimplementedError();
  }
}
