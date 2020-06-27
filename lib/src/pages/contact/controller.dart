import 'package:mobx/mobx.dart';
part 'controller.g.dart';

class ContactStore = _ContactStoreBase with _$ContactStore;

abstract class _ContactStoreBase with Store {
  _ContactStore() {
    autorun((_) {
      print(name);
    });
  }

  @observable
  String email = "";

  @observable
  String name = "";

  @action
  void setEmail(String value) => email = value;

  @action
  void setName(String value) => name = value;

  @computed
  bool get isEmailValid => RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(email);

  @computed
  bool get isNameValid => name.length < 2;

  @computed
  bool get isFormValid => isEmailValid && isNameValid;
}
