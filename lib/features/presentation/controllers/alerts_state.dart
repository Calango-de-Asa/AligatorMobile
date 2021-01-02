import 'package:AligatorMobile/features/domain/entities/alert.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

abstract class AlertsState extends Equatable {
  @override
  List<Object> get props => [];
}

class Loaded extends AlertsState {
  final List<Alert> alerts;

  Loaded({
    @required this.alerts,
  });

  get props => [...super.props, alerts];
}

class Error extends AlertsState {
  final String message;

  Error({
    @required this.message,
  });

  get props => [...super.props, message];
}
