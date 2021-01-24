import 'package:AligatorMobile/core/router/router.gr.dart';
import 'package:flutter/material.dart';

import 'core/presentation/theme.dart';
import 'dependency_injection.dart';

void main() {
  setUpDependencyInjection();
  runApp(MyApp());
}

final _appRouter = AppRouter();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp.router(
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
        builder: (context, navigator) => Theme(
          data: AppTheme.lightTheme,
          child: navigator,
        ),
      );
}
