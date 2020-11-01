import 'package:AligatorMobile/models/alert.dart';
import 'package:AligatorMobile/view/dashboard_widgets/alerts/alert_controller.dart';
import 'package:AligatorMobile/view/dashboard_widgets/widgets/dashboard_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'alert_box.dart';

class Alerts extends StatelessWidget {
  Alerts(this._controller);

  final AlertController _controller;

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(child: _body()),
      );

  Column _body() {
    return Column(
      children: [
        _title(),
        Expanded(child: _alertList()),
      ],
    );
  }

  Row _title() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Text("Aligator")],
    );
  }

  Widget _alertList() => Observer(
        builder: (_) {
          final List<Alert> alerts = _controller.alerts.data;
          return alerts != null
              ? DashBoardList(
                  itemBuilder: (_, index) => AlertBox(alerts[index]),
                  itemsCount: alerts.length,
                )
              : Center(child: CircularProgressIndicator());
        },
      );
}
