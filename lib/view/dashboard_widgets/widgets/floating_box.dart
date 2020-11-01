import 'package:flutter/material.dart';

class MenuItemBox extends StatelessWidget {
  final Widget _child;

  MenuItemBox(this._child);

  @override
  Widget build(BuildContext context) => _extenalPadding();

  Padding _extenalPadding() => Padding(
        padding: const EdgeInsets.all(6.0),
        child: _boxShadow(),
      );

  Container _boxShadow() {
    return Container(
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
      child: _internalPadding(),
    );
  }

  Padding _internalPadding() => Padding(
        padding: EdgeInsets.all(10.0),
        child: _child,
      );
}
