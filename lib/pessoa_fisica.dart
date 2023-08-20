import 'package:calc/enum/tipo_noitificacao.dart';
import 'package:calc/pessoa_abstact.dart';

class PessoaFisica extends Pessoa {
  String _CPF = "";

//Utilizando as chaves para informar que o tipo de notificação é opcional e definindo o padrão como NENHUM
  PessoaFisica(String nome, String endereco, String CPF,
      {tipoNotificacao notificacao = tipoNotificacao.NENHUM})
      : super(nome, endereco, notificacao: notificacao) {
    _CPF = CPF;
  }

  void setCpf(String CPF) {
    _CPF = CPF;
  }

  String getCPF() {
    return _CPF;
  }

  @override
  String toString() {
    return {
      "Nome": getNome(),
      "Endereco": getEndereco(),
      "CPF": _CPF,
      "Tipo de notificação": getTipoNotificacao()
    }.toString();
  }
}
