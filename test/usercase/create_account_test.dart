import 'package:class_clean_architecture/academy_bank.dart';
import 'package:class_clean_architecture/src/core/usercase/create_account.dart';
import 'package:class_clean_architecture/src/core/repository/person_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'create_account_test.mocks.dart';

@GenerateMocks([], customMocks: [
  MockSpec<PersonRepository>(
    as: #MockPersonRepository,
    returnNullOnMissingStub: true,
  ),
])
void main() {
  late PersonRepository personRepository;

  setUp(() {
    personRepository = MockPersonRepository();
  });

  test('Should be possible create an customer account', () {
    var person = Person('Dan', 'dan@email.com', '1234');

    when(personRepository.recovery(person.document)).thenReturn(person);

    var createAccount = CreateAccount(personRepository);
    expect(createAccount.execute(person.document), isNotNull);
    verify(personRepository.recovery(person.document)).called(1);
  });
}
