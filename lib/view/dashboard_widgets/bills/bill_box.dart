import 'package:AligatorMobile/view/dashboard_widgets/widgets/floating_box.dart';
import 'package:flutter/material.dart';

class BillBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MenuItemBox(
      Column(
        children: [
          Row(
            children: [Text('Pessoa:'), Text('Bla Bla')],
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
