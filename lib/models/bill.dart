import 'package:AligatorMobile/models/alert.dart';
import 'package:AligatorMobile/models/person.dart';
import 'package:mobx/mobx.dart';

part 'bill.g.dart';

class Bill = _Bill with _$Bill;

abstract class _Bill with Store {
  @observable
  Alert alert = Alert();
  @action
  Bill setAlert(Alert alert) {
    this.alert = alert;
    return this;
  }

  @observable
  bool paid = false;
  @action
  Bill setPaid(bool paid) {
    this.paid = paid;
    return this;
  }

  @observable
  List<Person> paidBy = [];
  @action
  Bill setPaidBy(List<Person> paidBy) {
    this.paidBy = paidBy;
    return this;
  }

  @observable
  double price = 0.0;
  @action
  Bill setPrice(double price) {
    this.price = price;
    return this;
  }
}
