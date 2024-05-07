import 'package:flutter/material.dart';
import 'pagina_quiz.dart';
import '../componentes/botao_acao.dart';
import '../constantes.dart';

class PaginaInicial extends StatelessWidget {
  const PaginaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Padding(
                padding: kPaddingPadrao,
                child: Image.asset('imagens/Frame 2.png'),
              )),
              Padding(
                padding: kPaddingPadrao,
                child: SizedBox(
                  height: 80,
                  child: BotaoAcao(
                    corBotao: kCorBotaoPrimario,
                    texto: 'Começar',
                    aoPressionar:() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PaginaQuiz()),
                      );
                    }
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


