import 'package:AligatorMobile/core/errors/failure.dart';
import 'package:AligatorMobile/core/use_cases/success.dart';
import 'package:AligatorMobile/core/use_cases/use_case.dart';
import 'package:AligatorMobile/features/domain/entities/person.dart';
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
  Future<Either<Failure, Success>> call(CreateAlertParams params) async =>
      this._personRepository.getLoggedPerson().then((either) => either.fold(
            (error) => Left(error),
            (person) =>
                _createAlertWithMessageAndPerson(params.message, person),
          ));

  Future<Either<Failure, Success>> _createAlertWithMessageAndPerson(
          String message, Person person) =>
      this._alertRepository.createAlert(message, DateTime.now(), person);
}

class CreateAlertParams extends Equatable {
  final String message;

  CreateAlertParams({
    @required this.message,
  });

  @override
  List<Object> get props => [message];
}
