import 'package:AligatorMobile/models/alert.dart';
import 'package:AligatorMobile/models/bill.dart';
import 'package:AligatorMobile/view/dashboard_widgets/bills/bill_controller.dart';
import 'package:AligatorMobile/view/dashboard_widgets/widgets/floating_box.dart';
import 'package:flutter/material.dart';

class BillUpsert extends StatelessWidget {
  BillController _controller;

  BillUpsert(this._controller);

  @override
  Widget build(BuildContext context) {
    return FloatingBox(_body());
  }

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
      RaisedButton(
          onPressed: () => this._controller.addBill(_buildBill()),
          child: Text('Concluir'))
    ]);
  }

  Bill _buildBill() => Bill().setAlert(Alert().setMessage('blaz'));
}
