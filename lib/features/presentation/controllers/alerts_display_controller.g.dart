// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alerts_display_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AlertsDisplayController on _AlertsDisplayController, Store {
  final _$alertsStateAtom = Atom(name: '_AlertsDisplayController.alertsState');

  @override
  AlertsState get alertsState {
    _$alertsStateAtom.reportRead();
    return super.alertsState;
  }

  @override
  set alertsState(AlertsState value) {
    _$alertsStateAtom.reportWrite(value, super.alertsState, () {
      super.alertsState = value;
    });
  }

  final _$_AlertsDisplayControllerActionController =
      ActionController(name: '_AlertsDisplayController');

  @override
  void _setAlertState(AlertsState alert) {
    final _$actionInfo = _$_AlertsDisplayControllerActionController.startAction(
        name: '_AlertsDisplayController._setAlertState');
    try {
      return super._setAlertState(alert);
    } finally {
      _$_AlertsDisplayControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
alertsState: ${alertsState}
    ''';
  }
}
