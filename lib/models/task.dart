import 'package:AligatorMobile/models/alert.dart';
import 'package:AligatorMobile/models/person.dart';
import 'package:mobx/mobx.dart';

part 'task.g.dart';

class Task = _Task with _$Task;

abstract class _Task with Store {
  @observable
  Alert alert = Alert();

  @observable
  bool done = false;

  @observable
  DateTime until;

  @observable
  Person inCharger = Person();
}
