import 'package:flutter/material.dart';

typedef Widget ItemBuilder(BuildContext b, int index);

class DashBoardList extends StatelessWidget {
  DashBoardList({this.itemBuilder});

  final ItemBuilder itemBuilder;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (b, i) => Padding(
        padding: const EdgeInsets.only(right: 20.0, left: 20.0),
        child: this.itemBuilder(b, i),
      ),
      itemCount: 10,
    );
  }
}
