// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Task on _Task, Store {
  final _$alertAtom = Atom(name: '_Task.alert');

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

  final _$doneAtom = Atom(name: '_Task.done');

  @override
  bool get done {
    _$doneAtom.reportRead();
    return super.done;
  }

  @override
  set done(bool value) {
    _$doneAtom.reportWrite(value, super.done, () {
      super.done = value;
    });
  }

  final _$untilAtom = Atom(name: '_Task.until');

  @override
  DateTime get until {
    _$untilAtom.reportRead();
    return super.until;
  }

  @override
  set until(DateTime value) {
    _$untilAtom.reportWrite(value, super.until, () {
      super.until = value;
    });
  }

  final _$inChargerAtom = Atom(name: '_Task.inCharger');

  @override
  Person get inCharger {
    _$inChargerAtom.reportRead();
    return super.inCharger;
  }

  @override
  set inCharger(Person value) {
    _$inChargerAtom.reportWrite(value, super.inCharger, () {
      super.inCharger = value;
    });
  }

  @override
  String toString() {
    return '''
alert: ${alert},
done: ${done},
until: ${until},
inCharger: ${inCharger}
    ''';
  }
}
