import 'package:flutter/material.dart';

typedef Widget ItemBuilder(BuildContext b, int index);

class DashBoardList extends StatelessWidget {
  DashBoardList({itemBuilder});

  final ItemBuilder itemBuilder = (_, __) => Container();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: this.itemBuilder,
      itemCount: 10,
    );
  }
}
