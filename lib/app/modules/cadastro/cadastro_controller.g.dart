// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cadastro_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CadastroController on _CadastroBase, Store {
  Computed<bool> _$isUserCheckPendingComputed;

  @override
  bool get isUserCheckPending => (_$isUserCheckPendingComputed ??=
          Computed<bool>(() => super.isUserCheckPending,
              name: '_CadastroBase.isUserCheckPending'))
      .value;
  Computed<bool> _$canRegisterComputed;

  @override
  bool get canRegister =>
      (_$canRegisterComputed ??= Computed<bool>(() => super.canRegister,
              name: '_CadastroBase.canRegister'))
          .value;

  final _$nameAtom = Atom(name: '_CadastroBase.name');

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

  final _$emailAtom = Atom(name: '_CadastroBase.email');

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

  final _$passwordAtom = Atom(name: '_CadastroBase.password');

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  final _$cpfAtom = Atom(name: '_CadastroBase.cpf');

  @override
  String get cpf {
    _$cpfAtom.reportRead();
    return super.cpf;
  }

  @override
  set cpf(String value) {
    _$cpfAtom.reportWrite(value, super.cpf, () {
      super.cpf = value;
    });
  }

  final _$_usernameCheckAtom = Atom(name: '_CadastroBase._usernameCheck');

  @override
  ObservableFuture<bool> get _usernameCheck {
    _$_usernameCheckAtom.reportRead();
    return super._usernameCheck;
  }

  @override
  set _usernameCheck(ObservableFuture<bool> value) {
    _$_usernameCheckAtom.reportWrite(value, super._usernameCheck, () {
      super._usernameCheck = value;
    });
  }

  final _$usernameCheckAtom = Atom(name: '_CadastroBase.usernameCheck');

  @override
  ObservableFuture<bool> get usernameCheck {
    _$usernameCheckAtom.reportRead();
    return super.usernameCheck;
  }

  @override
  set usernameCheck(ObservableFuture<bool> value) {
    _$usernameCheckAtom.reportWrite(value, super.usernameCheck, () {
      super.usernameCheck = value;
    });
  }

  final _$validateUsernameAsyncAction =
      AsyncAction('_CadastroBase.validateUsername');

  @override
  Future<dynamic> validateUsername(String value) {
    return _$validateUsernameAsyncAction
        .run(() => super.validateUsername(value));
  }

  final _$_CadastroBaseActionController =
      ActionController(name: '_CadastroBase');

  @override
  void setCpf(String value) {
    final _$actionInfo = _$_CadastroBaseActionController.startAction(
        name: '_CadastroBase.setCpf');
    try {
      return super.setCpf(value);
    } finally {
      _$_CadastroBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setUsername(String value) {
    final _$actionInfo = _$_CadastroBaseActionController.startAction(
        name: '_CadastroBase.setUsername');
    try {
      return super.setUsername(value);
    } finally {
      _$_CadastroBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEmail(String value) {
    final _$actionInfo = _$_CadastroBaseActionController.startAction(
        name: '_CadastroBase.setEmail');
    try {
      return super.setEmail(value);
    } finally {
      _$_CadastroBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPassword(String value) {
    final _$actionInfo = _$_CadastroBaseActionController.startAction(
        name: '_CadastroBase.setPassword');
    try {
      return super.setPassword(value);
    } finally {
      _$_CadastroBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateCPF(String value) {
    final _$actionInfo = _$_CadastroBaseActionController.startAction(
        name: '_CadastroBase.validateCPF');
    try {
      return super.validateCPF(value);
    } finally {
      _$_CadastroBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validatePassword(String value) {
    final _$actionInfo = _$_CadastroBaseActionController.startAction(
        name: '_CadastroBase.validatePassword');
    try {
      return super.validatePassword(value);
    } finally {
      _$_CadastroBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateEmail(String value) {
    final _$actionInfo = _$_CadastroBaseActionController.startAction(
        name: '_CadastroBase.validateEmail');
    try {
      return super.validateEmail(value);
    } finally {
      _$_CadastroBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
name: ${name},
email: ${email},
password: ${password},
cpf: ${cpf},
usernameCheck: ${usernameCheck},
isUserCheckPending: ${isUserCheckPending},
canRegister: ${canRegister}
    ''';
  }
}

mixin _$FormErrorState on _FormErrorState, Store {
  Computed<bool> _$hasErrorsComputed;

  @override
  bool get hasErrors =>
      (_$hasErrorsComputed ??= Computed<bool>(() => super.hasErrors,
              name: '_FormErrorState.hasErrors'))
          .value;

  final _$usernameAtom = Atom(name: '_FormErrorState.username');

  @override
  String get username {
    _$usernameAtom.reportRead();
    return super.username;
  }

  @override
  set username(String value) {
    _$usernameAtom.reportWrite(value, super.username, () {
      super.username = value;
    });
  }

  final _$emailAtom = Atom(name: '_FormErrorState.email');

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

  final _$passwordAtom = Atom(name: '_FormErrorState.password');

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  final _$cpfAtom = Atom(name: '_FormErrorState.cpf');

  @override
  String get cpf {
    _$cpfAtom.reportRead();
    return super.cpf;
  }

  @override
  set cpf(String value) {
    _$cpfAtom.reportWrite(value, super.cpf, () {
      super.cpf = value;
    });
  }

  @override
  String toString() {
    return '''
username: ${username},
email: ${email},
password: ${password},
cpf: ${cpf},
hasErrors: ${hasErrors}
    ''';
  }
}
