import 'package:class_clean_architecture/src/core/repository/person_repository.dart';
import 'package:class_clean_architecture/src/core/entity/account.dart';

class CreateAccount {
  late PersonRepository personRepository;

  CreateAccount(PersonRepository personRepository) {
    this.personRepository = personRepository;
  }

  String execute(String documentNumber) {
    var person = personRepository.recovery(documentNumber);
    var account = Account('1');
    person.addAccount(account);
    return account.number;
  }
}
