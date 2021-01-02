import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

import 'core/presentation/theme.dart';
import 'features/domain/entities/alert.dart';
import 'features/domain/entities/person.dart';
import 'features/domain/repositories/alert_repository.dart';
import 'features/domain/use_cases/get_all_alerts.dart';
import 'features/presentation/controllers/alerts_display_controller.dart';
import 'features/presentation/pages/alerts_display.dart';
import 'package:mockito/mockito.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      home: alertDisplay(),
    );
  }
}

class RepoMock extends Mock implements AlertRepository {}

alertDisplay() {
  var repo = RepoMock();
  var useCase = GetAllAlerts(repo);
  when(repo.getAllAlerts()).thenAnswer((_) async => Right([
        Alert(
            created: DateTime.now(),
            message: 'Olá mundo',
            postedBy: Person(name: 'Joca')),
      ]));
  var alertDisplay = AlertsDisplayController(useCase);
  return AlertsDisplay(alertDisplay);
}
