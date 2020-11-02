// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alert_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AlertController on _AlertController, Store {
  final _$alertsAtom = Atom(name: '_AlertController.alerts');

  @override
  ObservableStream<List<Alert>> get alerts {
    _$alertsAtom.reportRead();
    return super.alerts;
  }

  @override
  set alerts(ObservableStream<List<Alert>> value) {
    _$alertsAtom.reportWrite(value, super.alerts, () {
      super.alerts = value;
    });
  }

  final _$_AlertControllerActionController =
      ActionController(name: '_AlertController');

  @override
  dynamic addAlert(Alert alert) {
    final _$actionInfo = _$_AlertControllerActionController.startAction(
        name: '_AlertController.addAlert');
    try {
      return super.addAlert(alert);
    } finally {
      _$_AlertControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
alerts: ${alerts}
    ''';
  }
}
