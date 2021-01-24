import 'package:AligatorMobile/core/navigation/navigation_service.dart';
import 'package:AligatorMobile/dependency_injection.dart';
import 'package:AligatorMobile/features/domain/entities/alert.dart';
import 'package:AligatorMobile/features/domain/use_cases/create_alert.dart';
import 'package:AligatorMobile/features/presentation/controllers/alerts_display_controller.dart';
import 'package:AligatorMobile/features/presentation/controllers/alerts_state.dart';
import 'package:AligatorMobile/features/presentation/controllers/create_alert_controller.dart';
import 'package:AligatorMobile/features/presentation/widgets/alert_display.dart';
import 'package:AligatorMobile/features/presentation/widgets/circular_loading.dart';
import 'package:AligatorMobile/features/presentation/widgets/main_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'create_alert_display.dart';

class AlertsDisplay extends StatelessWidget {
  final AlertsDisplayController _alertDisplayController;

  AlertsDisplay(this._alertDisplayController) {
    this._alertDisplayController.fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _body(context),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => _onPressedFloatingActionButton(context),
          child: Icon(
            Icons.add,
            color: Colors.black,
          )),
    );
  }

  Widget _body(BuildContext context) => Column(
        children: [
          MainTitle(),
          Expanded(
            child: alerts(),
          ),
        ],
      );

  void _onPressedFloatingActionButton(BuildContext context) async {
    await NavigationService.push((context) => CreateAlertDisplay(
        createAlert: getIt<CreateAlert>(),
        createAlertController: getIt<CreateAlertController>()));
    print('poped');
    this._alertDisplayController.fetchData();
  }

  Widget alerts() => Observer(
        builder: (BuildContext context) {
          final state = this._alertDisplayController.alertsState;
          if (state is Loaded)
            return ListView(
              children: state.alerts.map(_buildAlert).toList(),
            );
          else if (state is Loading) {
            return CircularLoading();
          } else if (state is Error) {
            return Container();
          }
          return null;
        },
      );

  Widget _buildAlert(Alert alert) => AlertDisplay(alert);
}
