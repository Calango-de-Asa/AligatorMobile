import 'package:AligatorMobile/core/errors/failure.dart';
import 'package:AligatorMobile/core/use_cases/success.dart';
import 'package:AligatorMobile/core/use_cases/use_case.dart';
import 'package:AligatorMobile/features/domain/entities/alert.dart';
import 'package:AligatorMobile/features/domain/entities/person.dart';
import 'package:AligatorMobile/features/domain/entities/task.dart';
import 'package:AligatorMobile/features/domain/repositories/tasks_repository.dart';
import 'package:dartz/dartz.dart' as Z;
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class CreateTask extends UseCase<Success, CreateTaskParams> {
  final TasksRepository _tasksRepository;

  CreateTask(this._tasksRepository);

  @override
  Future<Z.Either<Failure, Success>> call(CreateTaskParams params) {
    return _tasksRepository.createTask(_createTask(params));
  }

  Task _createTask(CreateTaskParams params) => Task(
      alert: _createAlert(params.message, params.postedBy),
      done: false,
      inCharge: _createPerson(params.inCharge),
      until: DateTime.parse(params.until));

  Alert _createAlert(String message, String postedBy) => Alert(
      message: message,
      created: DateTime.now(),
      postedBy: _createPerson(postedBy));

  Person _createPerson(String name) => Person(name: name);
}

class CreateTaskParams extends Equatable {
  final String message;
  final String postedBy;
  final String inCharge;
  final String until;

  CreateTaskParams({
    @required this.message,
    @required this.postedBy,
    @required this.inCharge,
    @required this.until,
  });
  @override
  List<Object> get props => [
        message,
        postedBy,
        inCharge,
        until,
      ];
}
