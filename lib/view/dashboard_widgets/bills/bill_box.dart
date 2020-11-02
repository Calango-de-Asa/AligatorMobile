import 'package:AligatorMobile/models/bill.dart';
import 'package:AligatorMobile/view/dashboard_widgets/widgets/floating_box.dart';
import 'package:flutter/material.dart';

class BillBox extends StatelessWidget {
  final Bill _bill;

  BillBox(this._bill);

  @override
  Widget build(BuildContext context) {
    return FloatingBox(
      Column(
        children: [
          Row(
            children: [Text('Pessoa:'), Text(this._bill.paidBy[0].name)],
          ),
          Row(
            children: [
              Text("Time: Tick Tack"),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Checkbox(value: false, onChanged: (_) => {}),
                        Text('Pago'),
                      ],
                    ),
                    Row(
                      children: [Icon(Icons.person), Text('Fulano')],
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
