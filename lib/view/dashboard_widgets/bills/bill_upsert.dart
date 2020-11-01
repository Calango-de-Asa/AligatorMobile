import 'package:flutter/material.dart';

class BillUpsert extends StatelessWidget {
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
      Text('Bill:'),
      TextField(controller: TextEditingController(text: 'adf asdf')),
      SizedBox(height: 10),
      Row(
        children: [
          Text('Valor:'),
          Expanded(
            child: TextField(),
          ),
        ],
      ),
      Text('Dividir entre:'),
      ListView(
        shrinkWrap: true,
        children: [
          Row(
            children: [
              Checkbox(onChanged: (v) => {}, value: false),
              Text('Fulano')
            ],
          ),
          Row(
            children: [
              Checkbox(onChanged: (v) => {}, value: false),
              Text('Fulano')
            ],
          ),
          Row(
            children: [
              Checkbox(onChanged: (v) => {}, value: false),
              Text('Fulano')
            ],
          ),
          Row(
            children: [
              Checkbox(onChanged: (v) => {}, value: false),
              Text('Fulano')
            ],
          ),
          Row(
            children: [
              Checkbox(onChanged: (v) => {}, value: false),
              Text('Fulano')
            ],
          ),
        ],
      ),
      Row(
        children: [
          Text('Prazo: '),
          Icon(Icons.calendar_today),
        ],
      ),
      Row(children: [Text('Detalhes'), Expanded(child: TextField())]),
      Expanded(
        child: Container(),
      ),
      RaisedButton(onPressed: () => {}, child: Text('Concluir'))
    ]);
  }
}
