import 'package:AligatorMobile/features/domain/entities/alert.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import 'person.dart';

class Bill extends Equatable {
  final Alert alert;
  final bool paid;
  final List<Person> paidBy;
  final double price;

  Bill({
   @required this.alert,
   @required this.paid,
   @required this.paidBy,
   @required this.price,
  });

  @override
  List<Object> get props => [alert, paid, paidBy, price];
}
