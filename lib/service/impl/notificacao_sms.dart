import 'package:calc/pessoa_abstact.dart';
import 'package:calc/service/notificacao_interface.dart';

class NotificacaoSMS implements NotificacaoInterface {
  @override
  void enviarNotificacao(Pessoa pessoa) {
    print("Enviando SMS para: ${pessoa.getNome()}");
  }
}
