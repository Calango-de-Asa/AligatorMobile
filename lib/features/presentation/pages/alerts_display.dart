import 'package:AligatorMobile/features/domain/entities/alert.dart';
import 'package:AligatorMobile/features/presentation/controllers/alerts_display_controller.dart';
import 'package:AligatorMobile/features/presentation/controllers/alerts_state.dart';
import 'package:AligatorMobile/features/presentation/widgets/alert_display.dart';
import 'package:AligatorMobile/features/presentation/widgets/circular_loading.dart';
import 'package:AligatorMobile/features/presentation/widgets/main_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class AlertsDisplay extends StatelessWidget {
  final AlertsDisplayController _alertDisplayController;

  AlertsDisplay(this._alertDisplayController) {
    this._alertDisplayController.fetchData();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: _body(context),
        ),
      );

  Widget _body(BuildContext context) => Column(
        children: [
          MainTitle(),
          Expanded(
            child: alerts(),
          ),
        ],
      );

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
