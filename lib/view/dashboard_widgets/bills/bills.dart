import 'package:AligatorMobile/models/bill.dart';
import 'package:AligatorMobile/view/dashboard_widgets/bills/bill_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'bill_box.dart';
import '../widgets/dashboard_list.dart';

class Bills extends StatelessWidget {
  final BillController _controller;
  Bills(this._controller);

  @override
  Widget build(BuildContext context) =>
      Scaffold(body: SafeArea(child: _body()));

  Widget _body() => Column(children: [
        _title(),
        Expanded(child: _billsList()),
      ]);

  Row _title() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Center(child: Text("Aligator"))],
    );
  }

  Widget _billsList() => Observer(builder: (_) {
        List<Bill> bills = this._controller.bills.data;
        return bills != null
            ? DashBoardList(
                itemBuilder: (_, index) => BillBox(bills[index]),
                itemsCount: bills.length)
            : Center(child: CircularProgressIndicator());
      });
}
