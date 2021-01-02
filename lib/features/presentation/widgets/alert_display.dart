import 'package:AligatorMobile/features/domain/entities/alert.dart';
import 'package:flutter/material.dart';

class AlertDisplay extends StatelessWidget {
  final Alert _alert;
  AlertDisplay(this._alert);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(_alert.message),
        Text(_alert.created.toString()),
        Text(_alert.postedBy.name),
      ],
    );
  }
}
