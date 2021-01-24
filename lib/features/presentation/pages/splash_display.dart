import 'package:AligatorMobile/core/router/router.gr.dart';
import 'package:AligatorMobile/dependency_injection.dart';
import 'package:AligatorMobile/features/presentation/controllers/alerts_display_controller.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'alerts_display.dart';

class SplashDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _initLoad(context);
    return Container();
  }

  Future<void> _initLoad(BuildContext context) {
    setUpDependencyInjection();
    AutoRouter.of(context).push(
        AlertsRoute(alertDisplayController: getIt<AlertsDisplayController>()));
  }
}
