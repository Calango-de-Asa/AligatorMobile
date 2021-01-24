import 'package:AligatorMobile/features/presentation/widgets/circular_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SplashDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _initLoad(context);
    return Center(child: CircularLoading());
  }

  void _initLoad(BuildContext context) => {};
}
