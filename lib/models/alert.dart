import 'package:AligatorMobile/models/person.dart';
import 'package:mobx/mobx.dart';

part 'alert.g.dart';

class Alert = _Alert with _$Alert;

abstract class _Alert with Store {
  @observable
  String message = '';

  @observable
  DateTime created = DateTime.now();

  @observable
  Person postedBy = Person();
}
