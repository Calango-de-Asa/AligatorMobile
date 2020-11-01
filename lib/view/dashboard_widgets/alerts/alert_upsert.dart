import 'package:AligatorMobile/view/dashboard_widgets/widgets/floating_box.dart';
import 'package:flutter/material.dart';

class AlertUpsert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingBox(_body());
  }

  Column _body() {
    return Column(children: [
      Container(),
      Text('Alert:'),
      SizedBox(height: 10),
      Expanded(
        child: TextField(controller: TextEditingController(text: 'adf asdf')),
      ),
      RaisedButton(onPressed: () => {}, child: Text('Concluir'))
    ]);
  }
}
