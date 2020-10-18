import 'package:AligatorMobile/view/dashboard_controller.dart';
import 'package:AligatorMobile/view/dashboard_widgets/alerts.dart';
import 'package:AligatorMobile/view/dashboard_widgets/bills.dart';
import 'package:AligatorMobile/view/dashboard_widgets/tasks.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class DashBoard extends StatelessWidget {
  factory DashBoard() {
    return DashBoard._(DashBoardController());
  }

  DashBoard._(this._dbc);

  final DashBoardController _dbc;
  final List<Widget> _screens = [
    Alerts(),
    Bills(),
    Tasks(),
  ];

  final List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(icon: Icon(Icons.add_alert), label: 'avisos'),
    BottomNavigationBarItem(icon: Icon(Icons.add_alert), label: 'contas'),
    BottomNavigationBarItem(icon: Icon(Icons.add_alert), label: 'tarefas'),
  ];

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: this.items,
          currentIndex: this._dbc.pageIndex,
          onTap: this._dbc.onTapIcon,
        ),
        body: this._screens.elementAt(this._dbc.pageIndex),
      ),
    );
  }
}
