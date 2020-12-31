import 'package:AligatorMobile/core/errors/failure.dart';
import 'package:AligatorMobile/core/use_cases/no_params.dart';
import 'package:AligatorMobile/core/use_cases/use_case.dart';
import 'package:AligatorMobile/features/domain/entities/alert.dart';
import 'package:AligatorMobile/features/domain/repositories/alert_repository.dart';
import 'package:dartz/dartz.dart';

class GetAllAlerts implements UseCase<List<Alert>, NoParams> {
  AlertRepository _alertRepository;

  GetAllAlerts(this._alertRepository);

  @override
  Future<Either<Failure, List<Alert>>> call(NoParams param) => this._alertRepository.getAllAlerts();
}
