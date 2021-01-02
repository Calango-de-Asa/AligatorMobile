import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

abstract class Failure extends Equatable {}

class RepositoryFailure extends Failure {
  final String message;

  RepositoryFailure({@required this.message});

  get props => [message];
}
