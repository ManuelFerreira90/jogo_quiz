import 'package:flutter/material.dart';
import 'pagina_inicial.dart';
import '../componentes/botao_acao.dart';
import '../constantes.dart';

class PaginaFinal extends StatelessWidget {
  final int acertos;
  final int erros;

  const PaginaFinal({super.key, required this.acertos, required this.erros});

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
                const Center(
                  child: Text(
                    'Final do Jogo',
                    style: TextStyle(
                      fontSize: 40.0,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    'Acertos: $acertos',
                    style: const TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    'Erros: $erros',
                    style: const TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                ),
                Padding(
                  padding: kPaddingPadrao,
                  child: SizedBox(
                    height: 80,
                    child: BotaoAcao(
                      corBotao: kCorBotaoPrimario,
                      texto: 'Ir para tela inicial', 
                      aoPressionar: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PaginaInicial()),
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

