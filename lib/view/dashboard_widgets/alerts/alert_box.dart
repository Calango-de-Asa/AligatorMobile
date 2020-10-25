import 'package:flutter/material.dart';

class AlertBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black54,
              spreadRadius: 1,
              blurRadius: 2,
            )
          ],
          borderRadius: BorderRadius.all(Radius.circular(6)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Column(
            children: [
              Row(
                children: [Text('Pessoa:'), Text('Bla Bla')],
              ),
              Row(
                children: [Text("Time: Tick Tack")],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
