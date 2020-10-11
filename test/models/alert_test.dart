import 'package:AligatorMobile/models/alert.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test('the default constructor should returned a not nulled object', () {
    final Alert alert = Alert();
    expect(alert.message, isNotNull);
    expect(alert.until, isNotNull);
    expect(alert.postedBy, isNotNull);
  });
}
