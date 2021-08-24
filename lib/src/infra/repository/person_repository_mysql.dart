import 'package:class_clean_architecture/src/core/entity/person.dart';
import 'package:class_clean_architecture/src/core/repository/person_repository.dart';

class PersonRepositoryMysql implements PersonRepository {
  var conector;

  PersonRepositoryMysql(dynamic conector) {
    this.conector = conector;
  }

  @override
  Person recovery(String documentNumber) {
    // TODO: implement recovery
    throw UnimplementedError();
  }

  @override
  String save(Person person) {
    // TODO: implement save
    throw UnimplementedError();
  }
}
