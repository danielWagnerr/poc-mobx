import 'package:cpfcnpj/cpfcnpj.dart';
import 'package:mobx/mobx.dart';
import 'package:validators/validators.dart';

part 'cadastro_controller.g.dart';

class CadastroController = _CadastroBase with _$CadastroController;

abstract class _CadastroBase with Store {
  @observable
  String name = '';

  @observable
  String email = '';

  @observable
  String password = '';

  @observable
  String cpf = '';

  @observable
  ObservableFuture<bool> _usernameCheck = ObservableFuture.value(true);

  @action
  void setCpf(String value) => cpf = value;

  @action
  void setUsername(String value) => name = value;

  @action
  void setEmail(String value) => email = value;

  @action
  void setPassword(String value) => password = value;

  final FormErrorState error = FormErrorState();

  @observable
  ObservableFuture<bool> usernameCheck = ObservableFuture.value(true);

  @computed
  bool get isUserCheckPending => usernameCheck.status == FutureStatus.pending;

  @computed
  bool get canRegister => !error.hasErrors && (name != '' && email != '' && password != '');

  List<ReactionDisposer> _disposers;

  void setupValidations() {
    _disposers = [
      reaction((_) => name, validateUsername),
      reaction((_) => email, validateEmail),
      reaction((_) => password, validatePassword),
      reaction((_) => cpf, validateCPF)
    ];
  }

  @action
  void validateCPF(String value) {
    if (!CPF.isValid(value)){
      error.cpf = 'CPF inválido';
      return;
    }
    else {
      error.cpf = null;
    }
  }

  @action
  Future validateUsername(String value) async {
    if (isNull(value) || value.isEmpty) {
      error.username = 'Defina um usuário';
      return;
    }

    if (value.length < 5) {
      error.username = 'Deve ter mais de 5 caracteres';
      return;
    }

    try {
      _usernameCheck = ObservableFuture(checkValidUsername(value));

      error.username = null;

      final isValid = await _usernameCheck;
      if (!isValid) {
        error.username = 'Usuário não pode ser "admin"';
        return;
      }
    } on Object catch(_) {
      error.username = null;
    }

    error.username = null;
  }

  Future<bool> checkValidUsername(String value) async {
    await Future.delayed(const Duration(seconds: 1));

    return value != 'admin';
  }

  void dispose() {
    for (final d in _disposers) {
      d();
    }
  }

  void validateAll() {
    validatePassword(password);
    validateEmail(email);
    validateUsername(name);
  }

  @action
  void validatePassword(String value) {
    error.password = isNull(value) || value.isEmpty ? 'Senha obrigatória'  : null;
  }

  @action
  void validateEmail(String value) {
    error.email = isEmail(value) ? null : 'Email inválido';
  }
}


class FormErrorState = _FormErrorState with _$FormErrorState;

abstract class _FormErrorState with Store {
  @observable
  String username;

  @observable
  String email;

  @observable
  String password;

  @observable
  String cpf;

  @computed
  bool get hasErrors => username != null || email != null || password != null || cpf != null;

}