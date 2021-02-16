import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import 'alert.dart';
import 'person.dart';

class Task extends Equatable {
  final Alert alert;
  final bool done;
  final DateTime until;
  final Person inCharge;

  Task({
    @required this.alert,
    @required this.done,
    @required this.until,
    @required this.inCharge,
  });

  @override
  List<Object> get props => [alert, done, until, inCharge];
}
