import 'package:AligatorMobile/core/errors/failure.dart';
import 'package:AligatorMobile/core/use_cases/success.dart';
import 'package:AligatorMobile/core/use_cases/use_case.dart';
import 'package:AligatorMobile/features/domain/repositories/alert_repository.dart';
import 'package:AligatorMobile/features/domain/repositories/person_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class CreateAlert implements UseCase<Success, CreateAlertParams> {
  AlertRepository _alertRepository;
  PersonRepository _personRepository;

  CreateAlert(this._alertRepository, this._personRepository);

  @override
  Future<Either<Failure, Success>> call(CreateAlertParams params) => this
      ._personRepository
      .getPersonByName(params.postedBy)
      .then((either) => either.fold(
            (error) => Left(error),
            (person) => this
                ._alertRepository
                .createAlert(params.message, params.postedAt, person),
          ));
}

class CreateAlertParams extends Equatable {
  final String message;
  final DateTime postedAt;
  final String postedBy;

  CreateAlertParams({
    @required this.message,
    @required this.postedAt,
    @required this.postedBy,
  });

  @override
  List<Object> get props => [];
}
