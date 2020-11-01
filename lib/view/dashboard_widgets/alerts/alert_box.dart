import 'package:AligatorMobile/models/alert.dart';
import 'package:AligatorMobile/view/dashboard_widgets/widgets/floating_box.dart';
import 'package:flutter/material.dart';

class AlertBox extends StatelessWidget {
  final Alert _alert;

  AlertBox(this._alert);

  @override
  Widget build(BuildContext context) {
    return FloatingBox(
      Column(
        children: [
          _message(),
          _postTime(),
        ],
      ),
    );
  }

  Row _message() {
    return Row(
      children: [
        Text('Pessoa:'),
        Text(this._alert.message),
      ],
    );
  }

  Row _postTime() {
    return Row(
      children: [
        Text("Time:"),
        Text(this._alert.created.toString()),
      ],
    );
  }
}
