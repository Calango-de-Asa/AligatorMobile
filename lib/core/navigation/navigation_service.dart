import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future push(builder) =>
      this.navigatorKey.currentState.push(MaterialPageRoute(builder: builder));

  Future pushReplacement(builder) => this
      .navigatorKey
      .currentState
      .pushReplacement(MaterialPageRoute(builder: builder));
}
