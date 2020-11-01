import 'package:flutter/material.dart';

class FloatingBox extends StatelessWidget {
  final Widget _child;
  final EdgeInsets externalPadding;
  final EdgeInsets internalPadding;

  FloatingBox(
    this._child, {
    this.externalPadding = const EdgeInsets.all(6.0),
    this.internalPadding = const EdgeInsets.all(10.0),
  });

  @override
  Widget build(BuildContext context) => _extenalPadding();

  Padding _extenalPadding() => Padding(
        padding: this.externalPadding,
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
        padding: this.internalPadding,
        child: _child,
      );
}
