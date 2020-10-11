import 'package:flutter_test/flutter_test.dart';
import 'package:AligatorMobile/models/task.dart';

main() {
  test('the default constructor should returned a not nulled object', () {
    final Task task = Task();
    expect(task.done, isNotNull);
    expect(task.alert, isNotNull);
    expect(task.until, isNotNull);
    expect(task.inCharger, isNotNull);
  });
}
