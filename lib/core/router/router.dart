import 'package:AligatorMobile/features/presentation/pages/alerts_display.dart';
import 'package:AligatorMobile/features/presentation/pages/create_alert_display.dart';
import 'package:AligatorMobile/features/presentation/pages/splash_display.dart';
import 'package:auto_route/annotations.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Display,Route',
  routes: <AutoRoute>[
    AutoRoute(page: AlertsDisplay),
    AutoRoute(page: CreateAlertDisplay),
    AutoRoute(page: SplashDisplay, initial: true),
  ],
)
class $AppRouter {}
