import 'package:AligatorMobile/core/errors/failure.dart';
import 'package:AligatorMobile/core/use_cases/success.dart';
import 'package:AligatorMobile/features/domain/entities/alert.dart';
import 'package:AligatorMobile/features/domain/entities/person.dart';
import 'package:dartz/dartz.dart';

abstract class AlertRepository {
  Future<Either<Failure, Success>> createAlert(
      String message, DateTime created, Person person);
  Future<Either<Failure, List<Alert>>> getAllAlerts();
}
