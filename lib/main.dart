import 'package:flutter/material.dart';

import 'core/navigation/navigation_service.dart';
import 'dependency_injection.dart';
import 'features/presentation/pages/splash_display.dart';

void main() {
  setUpDependencyInjection();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        home: SplashDisplay(),
        navigatorKey: NavigationService.navigatorKey,
      );
}
