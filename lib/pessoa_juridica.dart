import 'package:calc/enum/tipo_noitificacao.dart';
import 'package:calc/pessoa_abstact.dart';

class PessoaJuridica extends Pessoa {
  String _CNPJ = "";

//Utilizando as chaves para informar que o tipo de notificação é opcional e definindo o padrão como NENHUM
  PessoaJuridica(String nome, String endereco, String CNPJ,
      {tipoNotificacao notificacao = tipoNotificacao.NENHUM})
      : super(nome, endereco, notificacao: notificacao) {
    _CNPJ = CNPJ;
  }

  void setCNPJ(String CNPJ) {
    _CNPJ = CNPJ;
  }

  String getCNPJ() {
    return _CNPJ;
  }

  @override
  String toString() {
    return {
      "Nome": getNome(),
      "Endereco": getEndereco(),
      "CNPJ": _CNPJ,
      "Tipo de notificação": getTipoNotificacao()
    }.toString();
  }
}
