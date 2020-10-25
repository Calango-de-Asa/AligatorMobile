import 'package:flutter/material.dart';
import 'bill_box.dart';
import '../widgets/dashboard_list.dart';

class Bills extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      Scaffold(body: SafeArea(child: _body()));

  Widget _body() => Column(children: [
        _title(),
        _billsList(),
      ]);

  Row _title() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Center(child: Text("Aligator"))],
    );
  }

  Widget _billsList() => DashBoardList(itemBuilder: (_, __) => BillBox());
}
