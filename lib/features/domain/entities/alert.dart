import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import 'person.dart';

class Alert extends Equatable {
  final String message;
  final DateTime created;
  final Person postedBy;

  Alert({
    @required this.message,
    @required this.created,
    @required this.postedBy,
  });

  @override
  List<Object> get props => [message, created, postedBy];
}
