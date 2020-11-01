import 'package:flutter/material.dart';

import 'package:AligatorMobile/view/dashboard_controller.dart';
import 'package:AligatorMobile/view/dashboard_widgets/bills/bills.dart';
import 'package:AligatorMobile/view/dashboard_widgets/tasks/tasks.dart';
import 'package:AligatorMobile/view/dashboard_widgets/alerts/alerts.dart';
import 'package:AligatorMobile/view/dashboard_widgets/tasks/upsert_alert.dart';

import 'package:AligatorMobile/view/utils/transparent_page_route.dart';

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

  final List<Widget> _upserts = [
    Alerts(),
    Bills(),
    UpsertTask(),
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
        floatingActionButton: FloatingActionButton(onPressed: () {
          Navigator.push(
              context,
              transparentPageRoute(
                nextPage: _upserts[this._dbc.pageIndex],
              ));
        }),
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
