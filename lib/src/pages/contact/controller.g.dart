// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ContactStore on _ContactStoreBase, Store {
  Computed<bool> _$isEmailValidComputed;

  @override
  bool get isEmailValid =>
      (_$isEmailValidComputed ??= Computed<bool>(() => super.isEmailValid,
              name: '_ContactStoreBase.isEmailValid'))
          .value;
  Computed<bool> _$isNameValidComputed;

  @override
  bool get isNameValid =>
      (_$isNameValidComputed ??= Computed<bool>(() => super.isNameValid,
              name: '_ContactStoreBase.isNameValid'))
          .value;
  Computed<bool> _$isFormValidComputed;

  @override
  bool get isFormValid =>
      (_$isFormValidComputed ??= Computed<bool>(() => super.isFormValid,
              name: '_ContactStoreBase.isFormValid'))
          .value;

  final _$emailAtom = Atom(name: '_ContactStoreBase.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$nameAtom = Atom(name: '_ContactStoreBase.name');

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$_ContactStoreBaseActionController =
      ActionController(name: '_ContactStoreBase');

  @override
  void setEmail(String value) {
    final _$actionInfo = _$_ContactStoreBaseActionController.startAction(
        name: '_ContactStoreBase.setEmail');
    try {
      return super.setEmail(value);
    } finally {
      _$_ContactStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setName(String value) {
    final _$actionInfo = _$_ContactStoreBaseActionController.startAction(
        name: '_ContactStoreBase.setName');
    try {
      return super.setName(value);
    } finally {
      _$_ContactStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
email: ${email},
name: ${name},
isEmailValid: ${isEmailValid},
isNameValid: ${isNameValid},
isFormValid: ${isFormValid}
    ''';
  }
}
