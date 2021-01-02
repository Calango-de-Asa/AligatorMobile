import 'package:flutter/material.dart';

typedef Widget WhenComplete(BuildContext context, dynamic value);

class CircularLoading<T> extends StatefulWidget {
  final Future<T> _future;
  final WhenComplete _whenComplete;

  CircularLoading({
    @required Future future,
    @required WhenComplete whenComplete,
  })  : _future = future,
        _whenComplete = whenComplete;

  @override
  State<StatefulWidget> createState() => _CircularLoading<T>();
}

class _CircularLoading<T> extends State<CircularLoading> {
  bool _isLoading = true;
  T _returnedValue;

  _CircularLoading() {
      print('Future');
      print(widget._future);
    widget._future.then((value) {
      setState(() {
        this._isLoading = false;
        this._returnedValue = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) => this._isLoading
      ? CircularProgressIndicator()
      : widget._whenComplete(context, this._returnedValue);
}
