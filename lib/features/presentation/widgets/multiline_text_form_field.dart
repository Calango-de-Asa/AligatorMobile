import 'package:flutter/material.dart';

class MultiLineTextFormField extends StatelessWidget {
  final void Function(String val) onChanged;

  MultiLineTextFormField({this.onChanged});

  @override
  Widget build(BuildContext context) => TextFormField(
        keyboardType: TextInputType.multiline,
        maxLines: 10,
        minLines: 1,
        onChanged: onChanged,
        decoration: InputDecoration(
          labelText: 'Mensagem',
          enabledBorder: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(),
        ),
      );
}
