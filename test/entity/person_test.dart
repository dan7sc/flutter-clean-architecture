import 'package:class_clean_architecture/academy_bank.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Should be possible create a customer', () {
    var customer = Person('Dan', 'dan@email.com.br', '1234');
    expect(customer, isNotNull);
  });

  test('Should not be possible create a nameless customer', () {
    // var customer = Person('', 'john@email.com', '1234');
    // expect(customer, isNull);
    expect(
        () => Person('', 'john@email.com', '1234'),
        throwsA(isA<ArgumentError>().having(
          (error) => error.message,
          'message',
          'Inform the person name',
        )));
  });
}
