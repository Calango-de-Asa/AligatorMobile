// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import '../../features/presentation/pages/alerts_display.dart' as _i2;
import '../../features/presentation/pages/create_alert_display.dart' as _i3;
import '../../features/presentation/pages/splash_display.dart' as _i4;
import '../../features/presentation/controllers/alerts_display_controller.dart'
    as _i5;
import 'package:flutter/material.dart' as _i6;
import '../../features/domain/use_cases/create_alert.dart' as _i7;
import '../../features/presentation/controllers/create_alert_controller.dart'
    as _i8;

class AppRouter extends _i1.RootStackRouter {
  AppRouter();

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    AlertsRoute.name: (entry) {
      var route = entry.routeData.as<AlertsRoute>();
      return _i1.AdaptivePage(
          entry: entry, child: _i2.AlertsDisplay(route.alertDisplayController));
    },
    CreateAlertRoute.name: (entry) {
      var route = entry.routeData.as<CreateAlertRoute>();
      return _i1.AdaptivePage(
          entry: entry,
          child: _i3.CreateAlertDisplay(
              createAlert: route.createAlert,
              createAlertController: route.createAlertController));
    },
    SplashRoute.name: (entry) {
      return _i1.AdaptivePage(entry: entry, child: _i4.SplashDisplay());
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig<AlertsRoute>(AlertsRoute.name,
            path: '/alerts-display',
            routeBuilder: (match) => AlertsRoute.fromMatch(match)),
        _i1.RouteConfig<CreateAlertRoute>(CreateAlertRoute.name,
            path: '/create-alert-display',
            routeBuilder: (match) => CreateAlertRoute.fromMatch(match)),
        _i1.RouteConfig<SplashRoute>(SplashRoute.name,
            path: '/', routeBuilder: (match) => SplashRoute.fromMatch(match))
      ];
}

class AlertsRoute extends _i1.PageRouteInfo {
  AlertsRoute({this.alertDisplayController})
      : super(name, path: '/alerts-display');

  AlertsRoute.fromMatch(_i1.RouteMatch match)
      : alertDisplayController = null,
        super.fromMatch(match);

  final _i5.AlertsDisplayController alertDisplayController;

  static const String name = 'AlertsRoute';
}

class CreateAlertRoute extends _i1.PageRouteInfo {
  CreateAlertRoute(
      {@_i6.required this.createAlert,
      @_i6.required this.createAlertController})
      : super(name, path: '/create-alert-display');

  CreateAlertRoute.fromMatch(_i1.RouteMatch match)
      : createAlert = null,
        createAlertController = null,
        super.fromMatch(match);

  final _i7.CreateAlert createAlert;

  final _i8.CreateAlertController createAlertController;

  static const String name = 'CreateAlertRoute';
}

class SplashRoute extends _i1.PageRouteInfo {
  const SplashRoute() : super(name, path: '/');

  SplashRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'SplashRoute';
}
