import 'package:AligatorMobile/models/alert.dart';
import 'package:mobx/mobx.dart';
import 'package:mock_data/mock_data.dart';

part 'alert_controller.g.dart';

class AlertController = _AlertController with _$AlertController;

abstract class _AlertController with Store {
  @observable
  ObservableStream<List<Alert>> alerts = Stream.value([
    Alert(message: mockString()),
    Alert(),
  ]).asObservable();
}
