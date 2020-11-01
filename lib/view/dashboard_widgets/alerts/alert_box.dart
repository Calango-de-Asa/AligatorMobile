import 'package:AligatorMobile/view/dashboard_widgets/widgets/floating_box.dart';
import 'package:flutter/material.dart';

class AlertBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingBox(
      Column(
        children: [
          Row(
            children: [
              Text('Pessoa:'),
              Text('Bla Bla'),
            ],
          ),
          Row(
            children: [
              Text("Time: Tick Tack"),
            ],
          ),
        ],
      ),
    );
  }
}
