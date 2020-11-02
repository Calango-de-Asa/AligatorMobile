import 'package:AligatorMobile/models/alert.dart';
import 'package:AligatorMobile/view/dashboard_widgets/alerts/alert_controller.dart';
import 'package:AligatorMobile/view/dashboard_widgets/widgets/floating_box.dart';
import 'package:flutter/material.dart';

class AlertUpsert extends StatelessWidget {
  final AlertController _controller;
  final TextEditingController _messageController;

  factory AlertUpsert(controller) =>
      AlertUpsert._(controller, TextEditingController());

  AlertUpsert._(this._controller, this._messageController);

  @override
  Widget build(BuildContext context) {
    return FloatingBox(_body());
  }

  Column _body() {
    return Column(children: [
      Container(),
      Text('Alert:'),
      SizedBox(height: 10),
      Expanded(
        child: TextField(controller: this._messageController),
      ),
      RaisedButton(
          onPressed: () {
            Alert alert = this._buildAlert();
            this._controller.addAlert(alert);
          },
          child: Text('Concluir'))
    ]);
  }

  Alert _buildAlert() => Alert().setMessage(this._messageController.text);
}
