// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DashBoardController on _DashBoardController, Store {
  final _$pageIndexAtom = Atom(name: '_DashBoardController.pageIndex');

  @override
  int get pageIndex {
    _$pageIndexAtom.reportRead();
    return super.pageIndex;
  }

  @override
  set pageIndex(int value) {
    _$pageIndexAtom.reportWrite(value, super.pageIndex, () {
      super.pageIndex = value;
    });
  }

  final _$_DashBoardControllerActionController =
      ActionController(name: '_DashBoardController');

  @override
  void onTapIcon(dynamic nextIndex) {
    final _$actionInfo = _$_DashBoardControllerActionController.startAction(
        name: '_DashBoardController.onTapIcon');
    try {
      return super.onTapIcon(nextIndex);
    } finally {
      _$_DashBoardControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
pageIndex: ${pageIndex}
    ''';
  }
}
