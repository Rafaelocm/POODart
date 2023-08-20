import 'package:calc/pessoa_abstact.dart';
import 'package:calc/service/notificacao_interface.dart';

class NotificacaoEmail implements NotificacaoInterface {
  @override
  void enviarNotificacao(Pessoa pessoa) {
    print("Enviando email para: ${pessoa.getNome()}");
  }
}
