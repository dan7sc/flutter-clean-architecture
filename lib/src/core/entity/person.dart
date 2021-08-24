import 'account.dart';

class Person {
  late String name;
  late String email;
  late String document;
  late Account account;

  Person(String name, String email, String document) {
    if (name == '') throw ArgumentError('Inform the person name');
    this.name = name;
    this.email = email;
    this.document = document;
  }

  void addAccount(Account account) {
    this.account = account;
  }
}
