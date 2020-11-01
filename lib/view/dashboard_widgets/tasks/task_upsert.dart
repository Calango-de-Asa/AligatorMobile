import 'package:flutter/material.dart';

class TaskUpsert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _roundedBorders();
  }

  Container _roundedBorders() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.black, blurRadius: 2, spreadRadius: 1)
          ],
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: _paddingBox(),
    );
  }

  Padding _paddingBox() => Padding(padding: EdgeInsets.all(20), child: _body());

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
