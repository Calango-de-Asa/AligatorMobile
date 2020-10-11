import 'package:AligatorMobile/models/alert.dart';
import 'package:AligatorMobile/models/person.dart';
import 'package:mobx/mobx.dart';

part 'bill.g.dart';

class Bill = _Bill with _$Bill;

abstract class _Bill with Store {
  @observable
  Alert alert = Alert();

  @observable
  bool paid = false;

  @observable
  Person paidBy = Person();

  @observable
  double price = 0.0;
}
