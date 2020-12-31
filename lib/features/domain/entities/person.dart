import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class Person extends Equatable {
  final String name;

  Person({@required this.name});

  @override
  List<Object> get props => [name];
}
