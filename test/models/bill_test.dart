import 'package:flutter_test/flutter_test.dart';
import 'package:AligatorMobile/models/bill.dart';

main() {
  test('the default constructor should returned a not nulled object', () {
    final Bill bill = Bill();
    expect(bill.alert, isNotNull);
    expect(bill.paid, isNotNull);
    expect(bill.paidBy, isNotNull);
    expect(bill.price, isNotNull);
  });
}
