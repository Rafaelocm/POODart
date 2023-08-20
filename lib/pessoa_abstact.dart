import 'package:calc/enum/tipo_noitificacao.dart';

abstract class Pessoa {
  String _nome = "";
  String _endereco = "";
  String _celular = "";
  String _email = "";
  String _token = "";
  tipoNotificacao _tipoNotificacao = tipoNotificacao.NENHUM;

//Utilizando as chaves para informar que o tipo de notificação é opcional e definindo o padrão como NENHUM
  Pessoa(String nome, String endereco,
      {tipoNotificacao notificacao = tipoNotificacao.NENHUM}) {
    _nome = nome;
    _endereco = endereco;
    _tipoNotificacao = notificacao;
  }

  void setNome(String nome) {
    _nome = nome;
  }

  String getNome() {
    return _nome.toUpperCase();
  }

  void setEndereco(String endereco) {
    _endereco = endereco.toUpperCase();
  }

  String getEndereco() {
    return _endereco;
  }

  void setEmail(String email) {
    _email = email;
  }

  String getEmail() {
    return _email;
  }

  void setCelular(String celular) {
    _celular = celular;
  }

  String getCelular() {
    return _celular;
  }

  void setToken(String token) {
    _token = token;
  }

  String getToken() {
    return _token;
  }

  void setTipoNotificacao(tipoNotificacao notificacao) {
    _tipoNotificacao = notificacao;
  }

  tipoNotificacao getTipoNotificacao() {
    return _tipoNotificacao;
  }

  //Utilizado para sobreescrever o método pessoa
  @override
  String toString() {
    return {
      "Nome ": _nome,
      "Endereco": _endereco,
      "Tipo de Notificação": _tipoNotificacao
    }.toString();
  }
}
