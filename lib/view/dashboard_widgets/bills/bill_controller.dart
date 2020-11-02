import 'package:AligatorMobile/models/bill.dart';
import 'package:mobx/mobx.dart';

part 'bill_controller.g.dart';

class BillController = _BillController with _$BillController;

abstract class _BillController with Store {
  List<Bill> billList = [];

  @observable
  ObservableStream<List<Bill>> bills = Stream.value(<Bill>[]).asObservable();

  @action
  addBill(Bill bill) {
    this.billList.add(bill);
    this.bills = Stream.value(this.billList).asObservable();
  }
}
