import 'package:class_clean_architecture/academy_bank.dart';

abstract class PersonRepository {
  String save(Person person);
  Person recovery(String documentNumber);
}
