import 'package:flutter/material.dart';
import 'bill_box.dart';

class Bills extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      Scaffold(body: SafeArea(child: _body()));

  Widget _body() => Column(children: [
        _title(),
        _billsList(),
      ]);

  ListView _billsList() {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (_, index) => BillBox(),
      itemCount: 10,
    );
  }

  Row _title() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Center(child: Text("Aligator"))],
    );
  }
}
