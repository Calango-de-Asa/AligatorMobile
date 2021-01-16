import 'package:AligatorMobile/features/presentation/widgets/multiline_text_form_field.dart';
import 'package:flutter/material.dart';

class CreateAlertDisplay extends StatelessWidget {
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
          Text('Aviso:', style: Theme.of(context).textTheme.headline2),
          MultiLineTextFormField(),
          RaisedButton(onPressed: () => {}, child: Text('Concluir'))
        ],
      );
}
