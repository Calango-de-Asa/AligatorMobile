import 'package:mobx/mobx.dart';

part 'tasks_display_controller.g.dart';

class TasksDisplayController = _TasksDisplayController
    with _$TasksDisplayController;

abstract class _TasksDisplayController with Store {
  Future<void> fetchData() async {}
}
