import 'package:AligatorMobile/features/domain/use_cases/create_alert.dart';
import 'package:AligatorMobile/features/presentation/controllers/create_alert_controller.dart';
import 'package:AligatorMobile/features/presentation/widgets/multiline_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class CreateAlertDisplay extends StatelessWidget {
  final CreateAlert createAlert;
  final CreateAlertController createAlertController;

  CreateAlertDisplay(
      {@required this.createAlert, @required this.createAlertController});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: _body(context),
            ),
          ),
        ),
      );

  Widget _body(BuildContext context) => Column(
        children: [
          Text(
            'Aviso:',
            style: Theme.of(context).textTheme.headline2,
          ),
          MultiLineTextFormField(
              onChanged: this.createAlertController.udpateMessage),
          RaisedButton(
              onPressed: createAlertController.validateForm,
              child: Text('Concluir'))
        ],
      );
}
