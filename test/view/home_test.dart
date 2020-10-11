import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:AligatorMobile/view/home.dart';

void main() {
  testWidgets('Should have a Scaffold', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: Home()));
    await tester.pump();

    final hasScaffold = find.byType(Scaffold);
    expect(hasScaffold, findsOneWidget);
  });
}
