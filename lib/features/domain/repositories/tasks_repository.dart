import 'package:AligatorMobile/core/errors/failure.dart';
import 'package:AligatorMobile/features/domain/entities/task.dart';
import 'package:dartz/dartz.dart' show Either;

abstract class TasksRepository {
  Future<Either<Failure, List<Task>>> getAllTasks();
}
