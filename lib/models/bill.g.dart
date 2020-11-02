// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bill.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Bill on _Bill, Store {
  final _$alertAtom = Atom(name: '_Bill.alert');

  @override
  Alert get alert {
    _$alertAtom.reportRead();
    return super.alert;
  }

  @override
  set alert(Alert value) {
    _$alertAtom.reportWrite(value, super.alert, () {
      super.alert = value;
    });
  }

  final _$paidAtom = Atom(name: '_Bill.paid');

  @override
  bool get paid {
    _$paidAtom.reportRead();
    return super.paid;
  }

  @override
  set paid(bool value) {
    _$paidAtom.reportWrite(value, super.paid, () {
      super.paid = value;
    });
  }

  final _$paidByAtom = Atom(name: '_Bill.paidBy');

  @override
  List<Person> get paidBy {
    _$paidByAtom.reportRead();
    return super.paidBy;
  }

  @override
  set paidBy(List<Person> value) {
    _$paidByAtom.reportWrite(value, super.paidBy, () {
      super.paidBy = value;
    });
  }

  final _$priceAtom = Atom(name: '_Bill.price');

  @override
  double get price {
    _$priceAtom.reportRead();
    return super.price;
  }

  @override
  set price(double value) {
    _$priceAtom.reportWrite(value, super.price, () {
      super.price = value;
    });
  }

  final _$_BillActionController = ActionController(name: '_Bill');

  @override
  Bill setAlert(Alert alert) {
    final _$actionInfo =
        _$_BillActionController.startAction(name: '_Bill.setAlert');
    try {
      return super.setAlert(alert);
    } finally {
      _$_BillActionController.endAction(_$actionInfo);
    }
  }

  @override
  Bill setPaid(bool paid) {
    final _$actionInfo =
        _$_BillActionController.startAction(name: '_Bill.setPaid');
    try {
      return super.setPaid(paid);
    } finally {
      _$_BillActionController.endAction(_$actionInfo);
    }
  }

  @override
  Bill setPaidBy(List<Person> paidBy) {
    final _$actionInfo =
        _$_BillActionController.startAction(name: '_Bill.setPaidBy');
    try {
      return super.setPaidBy(paidBy);
    } finally {
      _$_BillActionController.endAction(_$actionInfo);
    }
  }

  @override
  Bill setPrice(double price) {
    final _$actionInfo =
        _$_BillActionController.startAction(name: '_Bill.setPrice');
    try {
      return super.setPrice(price);
    } finally {
      _$_BillActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
alert: ${alert},
paid: ${paid},
paidBy: ${paidBy},
price: ${price}
    ''';
  }
}
