import 'package:AligatorMobile/view/dashboard_widgets/widgets/dashboard_list.dart';
import 'package:flutter/material.dart';
import 'alert_box.dart';

class Alerts extends StatelessWidget {
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

  Widget _alertList() => DashBoardList(
        itemBuilder: (_, __) => AlertBox(),
      );
}
