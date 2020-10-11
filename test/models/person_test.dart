import 'package:flutter_test/flutter_test.dart';
import 'package:AligatorMobile/models/person.dart';

main() {
  test('the default constructor should returned a not nulled object', () {
    final Person person = Person();
    expect(person.name, isNotNull);
  });
}
