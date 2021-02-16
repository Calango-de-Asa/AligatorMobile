import 'package:AligatorMobile/core/errors/failure.dart';
import 'package:AligatorMobile/core/use_cases/no_params.dart';
import 'package:AligatorMobile/core/use_cases/use_case.dart';
import 'package:AligatorMobile/features/domain/entities/task.dart';
import 'package:AligatorMobile/features/domain/repositories/tasks_repository.dart';
import 'package:dartz/dartz.dart' show Either;

class GetAllTasks extends UseCase<List<Task>, NoParams> {
  final TasksRepository _tasksRepository;

  GetAllTasks(this._tasksRepository);

  @override
  Future<Either<Failure, List<Task>>> call(NoParams param) {
    return this._tasksRepository.getAllTasks();
  }
}
