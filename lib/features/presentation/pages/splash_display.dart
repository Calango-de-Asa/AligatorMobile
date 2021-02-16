import 'package:AligatorMobile/core/navigation/navigation_service.dart';
import 'package:AligatorMobile/features/presentation/pages/tasks_display.dart';
import 'package:AligatorMobile/features/presentation/widgets/circular_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SplashDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _initLoad(context);
    return Center(child: CircularLoading());
  }

  void _initLoad(BuildContext context) =>
      Future.delayed(Duration(seconds: 5)).then((_) =>
          NavigationService.pushReplacement((context) => TasksDisplay()));
}
