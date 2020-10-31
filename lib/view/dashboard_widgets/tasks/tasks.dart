import 'package:flutter/material.dart';

import 'package:AligatorMobile/view/dashboard_widgets/widgets/dashboard_list.dart';
import 'package:AligatorMobile/view/dashboard_widgets/tasks/task_box.dart';

class Tasks extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        child: Center(
          child: DashBoardList(itemBuilder: (context, index) {
            return TaskBox();
          }),
        ),
      );
}
