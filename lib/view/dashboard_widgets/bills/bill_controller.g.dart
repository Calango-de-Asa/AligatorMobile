// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bill_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$BillController on _BillController, Store {
  final _$billsAtom = Atom(name: '_BillController.bills');

  @override
  ObservableStream<List<Bill>> get bills {
    _$billsAtom.reportRead();
    return super.bills;
  }

  @override
  set bills(ObservableStream<List<Bill>> value) {
    _$billsAtom.reportWrite(value, super.bills, () {
      super.bills = value;
    });
  }

  final _$_BillControllerActionController =
      ActionController(name: '_BillController');

  @override
  dynamic addBill(Bill bill) {
    final _$actionInfo = _$_BillControllerActionController.startAction(
        name: '_BillController.addBill');
    try {
      return super.addBill(bill);
    } finally {
      _$_BillControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
bills: ${bills}
    ''';
  }
}
