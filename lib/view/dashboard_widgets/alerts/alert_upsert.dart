import 'package:flutter/material.dart';

class AlertUpsert extends StatelessWidget {
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
      Text('Alert:'),
      SizedBox(height: 10),
      Expanded(
        child: TextField(controller: TextEditingController(text: 'adf asdf')),
      ),
      RaisedButton(onPressed: () => {}, child: Text('Concluir'))
    ]);
  }
}
