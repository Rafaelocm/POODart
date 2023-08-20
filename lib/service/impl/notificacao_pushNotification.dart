import 'package:calc/pessoa_abstact.dart';
import 'package:calc/service/notificacao_interface.dart';

class NotificacaoPush implements NotificacaoInterface {
  @override
  void enviarNotificacao(Pessoa pessoa) {
    print("Enviando PUSH NOTIFICATION para: ${pessoa.getNome()}");
  }
}
