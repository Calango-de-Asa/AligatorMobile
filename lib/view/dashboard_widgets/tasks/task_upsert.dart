import 'package:AligatorMobile/view/dashboard_widgets/widgets/floating_box.dart';
import 'package:flutter/material.dart';

class TaskUpsert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingBox(_body());
  }

  Column _body() {
    return Column(children: [
      Container(),
      Text('Name:'),
      TextField(),
      SizedBox(height: 10),
      Row(
        children: [
          Text('Prazo:'),
          Icon(Icons.calendar_today),
        ],
      ),
      Text('Encarregados'),
      Expanded(
        child: ListView(
          shrinkWrap: true,
          children: [
            Row(
              children: [
                Checkbox(value: false, onChanged: (value) => {}),
                Text('Fulano')
              ],
            ),
            Row(
              children: [
                Checkbox(value: false, onChanged: (value) => {}),
                Text('Fulano')
              ],
            ),
            Row(
              children: [
                Checkbox(value: false, onChanged: (value) => {}),
                Text('Fulano')
              ],
            ),
          ],
        ),
      ),
      RaisedButton(onPressed: () => {}, child: Text('Concluir'))
    ]);
  }
}
