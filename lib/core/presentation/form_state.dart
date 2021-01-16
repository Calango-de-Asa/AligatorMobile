import 'package:equatable/equatable.dart';

abstract class FormState extends Equatable {
  @override
  List<Object> get props => [];
}

class WaitingForm extends FormState {}

class ValidatingForm extends FormState {}

class ValidationSuccess extends FormState {}

class ValidationError extends FormState {
  final String message;

  ValidationError(this.message);
  @override
  List<Object> get props => [...super.props, message];
}
