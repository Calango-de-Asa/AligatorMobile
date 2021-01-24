// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_alert_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CreateAlertController on _CreateAlertController, Store {
  final _$messageAtom = Atom(name: '_CreateAlertController.message');

  @override
  String get message {
    _$messageAtom.reportRead();
    return super.message;
  }

  @override
  set message(String value) {
    _$messageAtom.reportWrite(value, super.message, () {
      super.message = value;
    });
  }

  final _$formStateAtom = Atom(name: '_CreateAlertController.formState');

  @override
  FormState get formState {
    _$formStateAtom.reportRead();
    return super.formState;
  }

  @override
  set formState(FormState value) {
    _$formStateAtom.reportWrite(value, super.formState, () {
      super.formState = value;
    });
  }

  final _$_CreateAlertControllerActionController =
      ActionController(name: '_CreateAlertController');

  @override
  dynamic udpateMessage(String message) {
    final _$actionInfo = _$_CreateAlertControllerActionController.startAction(
        name: '_CreateAlertController.udpateMessage');
    try {
      return super.udpateMessage(message);
    } finally {
      _$_CreateAlertControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic _setFormState(FormState formState) {
    final _$actionInfo = _$_CreateAlertControllerActionController.startAction(
        name: '_CreateAlertController._setFormState');
    try {
      return super._setFormState(formState);
    } finally {
      _$_CreateAlertControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
message: ${message},
formState: ${formState}
    ''';
  }
}
