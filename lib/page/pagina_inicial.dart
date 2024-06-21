import 'package:flutter/material.dart';
import 'pagina_quiz.dart';
import '../components/botao_acao.dart';
import '../constantes.dart';

class PaginaInicial extends StatelessWidget {
  const PaginaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Expanded(
              child: Padding(
                padding: kPaddingPadrao,
                child: Image(
                  image: AssetImage('imagens/banner_quiz.png'),
                ),
              ),
            ),
            Padding(
              padding: kPaddingPadrao,
              child: SizedBox(
                height: 80,
                child: BotaoAcao(
                  corBotao: kCorBotaoPrimario,
                  texto: 'Começar',
                  aoPressionar: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PaginaQuiz(),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
