import 'package:mobx/mobx.dart';

part 'bill.g.dart';

class Bill = _Bill with _$Bill;

abstract class _Bill with Store {
  @observable
  String message;
}
