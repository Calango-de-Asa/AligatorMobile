import 'package:AligatorMobile/view/dashboard_widgets/alerts/alert_controller.dart';
import 'package:flutter/material.dart';

import 'package:AligatorMobile/view/dashboard_controller.dart';
import 'package:AligatorMobile/view/dashboard_widgets/bills/bills.dart';
import 'package:AligatorMobile/view/dashboard_widgets/bills/bill_upsert.dart';

import 'package:AligatorMobile/view/dashboard_widgets/tasks/tasks.dart';
import 'package:AligatorMobile/view/dashboard_widgets/tasks/task_upsert.dart';

import 'package:AligatorMobile/view/dashboard_widgets/alerts/alerts.dart';
import 'package:AligatorMobile/view/dashboard_widgets/alerts/alert_upsert.dart';

import 'package:AligatorMobile/view/utils/transparent_page_route.dart';

import 'package:flutter_mobx/flutter_mobx.dart';

class DashBoard extends StatelessWidget {
  factory DashBoard() {
    final List _controllers = [AlertController()];
    final List<Widget> _screens = [
      Alerts(_controllers[0]),
      Bills(),
      Tasks(),
    ];
    final List<Widget> _upserts = [
      AlertUpsert(_controllers[0]),
      BillUpsert(),
      TaskUpsert(),
    ];
    return DashBoard._(
      DashBoardController(),
      _screens,
      _upserts,
    );
  }

  DashBoard._(this._dbc, this._screens, this._upserts);

  final DashBoardController _dbc;

  final List<Widget> _screens;

  final List<Widget> _upserts;

  final List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(icon: Icon(Icons.add_alert), label: 'avisos'),
    BottomNavigationBarItem(icon: Icon(Icons.add_alert), label: 'contas'),
    BottomNavigationBarItem(icon: Icon(Icons.add_alert), label: 'tarefas'),
  ];

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => Scaffold(
        floatingActionButton: _floatinActionButton(context),
        bottomNavigationBar: BottomNavigationBar(
          items: this.items,
          currentIndex: this._dbc.pageIndex,
          onTap: this._dbc.onTapIcon,
        ),
        body: this._screens.elementAt(this._dbc.pageIndex),
      ),
    );
  }

  _floatinActionButton(context) => FloatingActionButton(
      onPressed: () {
        Navigator.push(
            context,
            transparentPageRoute(
              nextPage: _upserts[this._dbc.pageIndex],
            ));
      },
      child: Icon(Icons.add));
}
