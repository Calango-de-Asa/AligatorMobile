// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alert.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Alert on _Alert, Store {
  final _$messageAtom = Atom(name: '_Alert.message');

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

  final _$createdAtom = Atom(name: '_Alert.created');

  @override
  DateTime get created {
    _$createdAtom.reportRead();
    return super.created;
  }

  @override
  set created(DateTime value) {
    _$createdAtom.reportWrite(value, super.created, () {
      super.created = value;
    });
  }

  final _$postedByAtom = Atom(name: '_Alert.postedBy');

  @override
  Person get postedBy {
    _$postedByAtom.reportRead();
    return super.postedBy;
  }

  @override
  set postedBy(Person value) {
    _$postedByAtom.reportWrite(value, super.postedBy, () {
      super.postedBy = value;
    });
  }

  @override
  String toString() {
    return '''
message: ${message},
created: ${created},
postedBy: ${postedBy}
    ''';
  }
}
