import 'package:AligatorMobile/models/person.dart';
import 'package:mobx/mobx.dart';

part 'alert.g.dart';

class Alert = _Alert with _$Alert;

abstract class _Alert with Store {
  _Alert({
    this.message = '',
    this.created,
    this.postedBy,
  }) {
    this.created = DateTime.now();
    this.postedBy = Person();
  }

  @observable
  String message;
  @action
  Alert setMessage(String message) {
    this.message = message;
    return this;
  }

  @observable
  DateTime created;
  @action
  Alert setCreated(DateTime created) {
    this.created = created;
    return this;
  }

  @observable
  Person postedBy;
  @action
  Alert setPostedBy(Person postedBy) {
    this.postedBy = postedBy;
    return this;
  }
}
