import 'package:AligatorMobile/view/dashboard_widgets/widgets/floating_box.dart';
import 'package:flutter/material.dart';

class TaskBox extends StatelessWidget {
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
              Text("Prazo: Tick Tack"),
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
                    _rowPersonName('Encarregado:', 'Fulano'),
                    _rowPersonName('Cadastrado:', 'Lucas'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Row _rowPersonName(String action, String name) {
    return Row(
      children: [Text(action), Icon(Icons.person), Text(name)],
    );
  }
}
