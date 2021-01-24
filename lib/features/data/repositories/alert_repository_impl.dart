import 'package:AligatorMobile/core/errors/failure.dart';
import 'package:AligatorMobile/core/use_cases/success.dart';
import 'package:AligatorMobile/features/domain/entities/alert.dart';
import 'package:AligatorMobile/features/domain/entities/person.dart';
import 'package:AligatorMobile/features/domain/repositories/alert_repository.dart';
import 'package:dartz/dartz.dart';

class AlertRepositoryImpl extends AlertRepository {
  List<Alert> _alerts = [];
  @override
  Future<Either<Failure, Success>> createAlert(
      String message, DateTime created, Person person) async {
    _alerts.add(Alert(message: message, created: created, postedBy: person));
    return Right(Success());
  }

  @override
  Future<Either<Failure, List<Alert>>> getAllAlerts() async {
    return Right(this._alerts);
  }
}
