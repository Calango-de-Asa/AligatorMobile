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
        _alertList(),
      ],
    );
  }

  Row _title() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Text("Aligator")],
    );
  }

  Widget _alertList() => ListView.builder(
      itemBuilder: (_, __) => Padding(
            padding: const EdgeInsets.only(right: 20.0, left: 20.0),
            child: AlertBox(),
          ),
      shrinkWrap: true,
      itemCount: 10);
}
