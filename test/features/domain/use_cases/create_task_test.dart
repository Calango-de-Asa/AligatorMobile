import 'package:AligatorMobile/core/use_cases/success.dart';
import 'package:AligatorMobile/features/domain/entities/alert.dart';
import 'package:AligatorMobile/features/domain/entities/person.dart';
import 'package:AligatorMobile/features/domain/entities/task.dart';
import 'package:AligatorMobile/features/domain/repositories/tasks_repository.dart';
import 'package:AligatorMobile/features/domain/use_cases/create_task.dart';
import 'package:dartz/dartz.dart' as Z;
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class TasksRepositoryMock extends Mock implements TasksRepository {}

main() {
  CreateTask createTask;

  TasksRepository tasksRepository;

  CreateTaskParams createTaskParams;

  final String msg = 'Uma Menssagem';
  final String postedBy = 'Darcio';
  final String inCharge = 'Filho';

  final String until = DateTime.utc(2000).toIso8601String();

  setUp(() {
    tasksRepository = TasksRepositoryMock();
    createTask = CreateTask(tasksRepository);

    createTaskParams = CreateTaskParams(
        message: msg, postedBy: postedBy, inCharge: inCharge, until: until);
  });

  group('CreateTask', () {
    test('should create a task with default parameters', () async {
      when(tasksRepository.createTask(any))
          .thenAnswer((_) async => Z.Right(Success()));

      final result = await createTask(createTaskParams);

      expect(result, Z.Right(Success()));

      verify(tasksRepository.createTask(any));
      verifyNoMoreInteractions(tasksRepository);
    });
  });
}
