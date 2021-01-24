import 'package:get_it/get_it.dart';

import 'features/data/repositories/alert_repository_impl.dart';
import 'features/domain/repositories/alert_repository.dart';
import 'features/domain/repositories/person_repository.dart';
import 'features/domain/use_cases/create_alert.dart';
import 'features/domain/use_cases/get_all_alerts.dart';
import 'features/presentation/controllers/alerts_display_controller.dart';

final getIt = GetIt.I;

void setUpDependencyInjection() {
  getIt.registerSingleton<AlertRepository>(AlertRepositoryImpl());

  getIt.registerFactory<GetAllAlerts>(
      () => GetAllAlerts(getIt<AlertRepository>()));
  getIt.registerFactory<CreateAlert>(() => CreateAlert(
        getIt<AlertRepository>(),
        getIt<PersonRepository>(),
      ));

  getIt.registerFactory<AlertsDisplayController>(
      () => AlertsDisplayController(getIt<GetAllAlerts>()));
}
