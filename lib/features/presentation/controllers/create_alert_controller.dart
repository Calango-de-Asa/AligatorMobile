import 'package:AligatorMobile/core/presentation/form_state.dart';
import 'package:AligatorMobile/features/domain/use_cases/create_alert.dart';
import 'package:mobx/mobx.dart';

part 'create_alert_controller.g.dart';

class CreateAlertController = _CreateAlertController
    with _$CreateAlertController;

abstract class _CreateAlertController with Store {
  final CreateAlert _createAlert;

  _CreateAlertController(this._createAlert);

  @observable
  String message = '';
  @action
  udpateMessage(String message) {
    this.message = message;
  }

  @observable
  FormState formState = WaitingForm();
  @action
  _setFormState(FormState formState) {
    this.formState = formState;
  }

  Future<void> validateForm() =>
      this._createAlert(CreateAlertParams(message: this.message));
}
