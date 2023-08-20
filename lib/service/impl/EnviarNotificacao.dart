import 'package:calc/enum/tipo_noitificacao.dart';
import 'package:calc/pessoa_abstact.dart';
import 'package:calc/service/impl/notificacao_pushNotification.dart';
import 'package:calc/service/impl/notificacao_sms.dart';
import 'package:calc/service/impl/notificao_email.dart';
import 'package:calc/service/notificacao_interface.dart';

class EnviarNotificacao {
  NotificacaoInterface? notificacao;

  void notificar(Pessoa pessoa) {
    switch (pessoa.getTipoNotificacao()) {
      case tipoNotificacao.EMAIL:
        notificacao = NotificacaoEmail();
        break;
      case tipoNotificacao.PUSH_NOTIFICATION:
        notificacao = NotificacaoPush();
        break;
      case tipoNotificacao.SMS:
        notificacao = NotificacaoSMS();
        break;
      default:
        break;
    }
    if (notificacao != null) {
      notificacao!.enviarNotificacao(pessoa);
    } else {
      print("Pessoa sem tipo de notificação");
    }
  }
}
