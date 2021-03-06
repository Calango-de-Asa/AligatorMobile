import 'package:AligatorMobile/core/errors/failure.dart';
import 'package:AligatorMobile/core/navigation/navigation_service.dart';
import 'package:AligatorMobile/core/use_cases/no_params.dart';
import 'package:AligatorMobile/features/domain/entities/alert.dart';
import 'package:AligatorMobile/features/domain/use_cases/create_alert.dart';
import 'package:AligatorMobile/features/domain/use_cases/get_all_alerts.dart';
import 'package:AligatorMobile/features/presentation/pages/create_alert_display.dart';
import 'package:mobx/mobx.dart';

import '../../../dependency_injection.dart';
import 'alerts_state.dart';
import 'create_alert_controller.dart';

part 'alerts_display_controller.g.dart';

class AlertsDisplayController = _AlertsDisplayController
    with _$AlertsDisplayController;

abstract class _AlertsDisplayController with Store {
  final GetAllAlerts _getAllAlerts;

  _AlertsDisplayController(this._getAllAlerts);

  Future<void> fetchData() async {
    this._setAlertState(Loading());
    final awnswer = await this._getAllAlerts(NoParams());
    awnswer.fold(
      this._unsuccessfulFetch,
      this._sucessfulFetch,
    );
  }

  _sucessfulFetch(List<Alert> alerts) {
    final alertsState = Loaded(alerts: alerts);
    this._setAlertState(alertsState);
  }

  _unsuccessfulFetch(Failure failure) =>
      this._setAlertState(Error(message: 'we get some error'));

  goToCreateAlertDisplay() async {
    await NavigationService.push((context) => CreateAlertDisplay(
        createAlert: getIt<CreateAlert>(),
        createAlertController: getIt<CreateAlertController>()));
    this.fetchData();
  }

  @observable
  AlertsState alertsState = Loaded(alerts: []);

  @action
  void _setAlertState(AlertsState alert) {
    this.alertsState = alert;
  }
}
