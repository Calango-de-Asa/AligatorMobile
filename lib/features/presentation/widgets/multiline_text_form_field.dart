import 'package:flutter/material.dart';

class MultiLineTextFormField extends StatelessWidget {
  @override
  Widget build(BuildContext context) => TextFormField(
        keyboardType: TextInputType.multiline,
        maxLines: 10,
        minLines: 1,
        decoration: InputDecoration(
                labelText: 'Mensagem',
                enabledBorder: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(),
                ),
      );
}
