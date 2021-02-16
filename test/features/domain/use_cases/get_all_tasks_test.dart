import 'package:AligatorMobile/core/use_cases/no_params.dart';
import 'package:AligatorMobile/features/domain/entities/task.dart';
import 'package:AligatorMobile/features/domain/repositories/tasks_repository.dart';
import 'package:AligatorMobile/features/domain/use_cases/get_all_tasks.dart';
import 'package:dartz/dartz.dart' show Right;
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class TasksRepositoryMock extends Mock with TasksRepository {}

main() {
  TasksRepository tasksRepository;

  GetAllTasks getAllTasks;

  List<Task> taskList;

  setUp(() {
    tasksRepository = TasksRepositoryMock();

    getAllTasks = GetAllTasks(tasksRepository);
  });

  group('GetAllTasks', () {
    test('should return a list with all the tasks', () async {
      when(tasksRepository.getAllTasks())
          .thenAnswer((_) async => Right(taskList));

      final result = await getAllTasks(NoParams());

      expect(result, equals(Right(taskList)));
    });
  });
}
