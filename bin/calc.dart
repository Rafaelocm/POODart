import 'package:calc/enum/tipo_noitificacao.dart';
import 'package:calc/pessoa_fisica.dart';
import 'package:calc/pessoa_juridica.dart';
import 'package:calc/service/impl/EnviarNotificacao.dart';

void main(List<String> arguments) {
  PessoaFisica pessoaFisica = PessoaFisica(
      "Rafael", "Rua Lourival Costa", "222222222",
      notificacao: tipoNotificacao.EMAIL);
  print(pessoaFisica);

  PessoaJuridica pessoaJuridica =
      PessoaJuridica("ELCELAB", "Rua Estreita", "27.303.008/0001-83");
  print(pessoaJuridica);

  EnviarNotificacao enviarNotificacao = EnviarNotificacao();
  enviarNotificacao.notificar(pessoaJuridica);
  enviarNotificacao.notificar(pessoaFisica);
}
