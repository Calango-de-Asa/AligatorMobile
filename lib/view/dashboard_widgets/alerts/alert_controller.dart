import 'package:AligatorMobile/models/alert.dart';
import 'package:mobx/mobx.dart';

part 'alert_controller.g.dart';

class AlertController = _AlertController with _$AlertController;

abstract class _AlertController with Store {
  List<Alert> alertList = [];

  @observable
  ObservableStream<List<Alert>> alerts = Stream.value(<Alert>[]).asObservable();

  @action
  addAlert(Alert alert) {
    this.alertList.add(alert);
    this.alerts = Stream.value(this.alertList).asObservable();
  }
}
