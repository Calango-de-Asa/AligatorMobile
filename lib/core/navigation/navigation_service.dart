import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NavigationService {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  static Future push(builder) =>
      navigatorKey.currentState.push(MaterialPageRoute(builder: builder));

  static Future pushReplacement(builder) => navigatorKey.currentState
      .pushReplacement(MaterialPageRoute(builder: builder));
}
