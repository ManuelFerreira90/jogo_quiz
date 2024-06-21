import 'package:flutter/material.dart';
import 'package:jogo_quiz/classes/pergunta_quiz.dart';
import 'package:jogo_quiz/components/botao_acao.dart';
import '../classes/gerenciar_quiz.dart';
import 'pagina_final.dart';
import '../constantes.dart';

class PaginaQuiz extends StatefulWidget {
  @override
  _PaginaQuizState createState() => _PaginaQuizState();
}

class _PaginaQuizState extends State<PaginaQuiz> {
  final ScrollController _scrollController = ScrollController();
  GerenciarQuiz manager = GerenciarQuiz();

  void contabilizarPontos(bool resposta, int indice) {
    setState(() {
      manager.verificarResposta(resposta, indice);
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeOut,
      );
    });
  }

  void atualizarPergunta() {
    if (manager.verificaTermino()) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  PaginaFinal(acertos: manager.acertos, erros: manager.erros)));
    }
    setState(() {
      manager.setPergunta();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      manager.perguntaAtual.pergunta,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                    padding: kPaddingSecundario,
                    child: BotaoAcao(
                      corBotao: kCorBotaoPrimario,
                      texto: 'Verdadeiro', 
                      aoPressionar: () {
                        contabilizarPontos(true, manager.index);
                        atualizarPergunta();
                      }
                    )
                  ),
              ),
              Expanded(
                child: Padding(
                  padding: kPaddingSecundario,
                  child: BotaoAcao(
                      corBotao: kCorBotaoSecundario.shade800,
                      texto: 'Falso', 
                      aoPressionar: () {
                        contabilizarPontos(false, manager.index);
                        atualizarPergunta();
                      }
                    )
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      controller: _scrollController,
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: manager.pontos,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _iniciarQuiz() {

  }
}
