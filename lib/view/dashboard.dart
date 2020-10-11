import 'package:AligatorMobile/view/dashboard_widgets/alerts.dart';
import 'package:AligatorMobile/view/dashboard_widgets/bills.dart';
import 'package:AligatorMobile/view/dashboard_widgets/tasks.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  final List<Widget> screens = [
    Alerts(),
    Bills(),
    Tasks(),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
