import 'package:flutter/material.dart';
import 'pagina_inicial.dart';
import '../components/botao_acao.dart';
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Final do Jogo',
                    style: TextStyle(
                      fontSize: 40.0,
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'Acertos: ',
                        style: const TextStyle(fontSize: 25.0,),
                      ),
                      Text(
                        '$acertos',
                        style: const TextStyle(fontSize: 25.0, color: Colors.green, ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'Erros: ',
                        style: const TextStyle(
                          fontSize: 25.0,
                        ),
                      ),
                      Text(
                        '$erros',
                        style: const TextStyle(
                          fontSize: 25.0,
                          color: Colors.red
                        ),
                      ),
                    ],
                  ),
                ],
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
                        MaterialPageRoute(
                            builder: (context) => const PaginaInicial()),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
