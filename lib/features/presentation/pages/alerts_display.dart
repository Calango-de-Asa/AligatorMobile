import 'package:AligatorMobile/features/domain/entities/alert.dart';
import 'package:AligatorMobile/features/presentation/controllers/alerts_display_controller.dart';
import 'package:AligatorMobile/features/presentation/widgets/alert_display.dart';
import 'package:AligatorMobile/features/presentation/widgets/circular_loading.dart';
import 'package:AligatorMobile/features/presentation/widgets/main_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AlertsDisplay extends StatelessWidget {
  final AlertsDisplayController _alertDisplayController;

  AlertsDisplay(this._alertDisplayController) {}

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

  Widget alerts() => CircularLoading(
        future: this._alertDisplayController.fetchData(),
        whenComplete: (_, __) => ListView(
          children:
              this._alertDisplayController.alerts.map(_buildAlert).toList(),
        ),
      );

  Widget _buildAlert(Alert alert) => AlertDisplay(alert);
}
