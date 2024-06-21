import 'package:flutter/material.dart';
import 'pergunta_quiz.dart';

class GerenciarQuiz {
  int acertos = 0;
  int erros = 0;
  int index = 0;
  List<Icon> pontos = [];
  List<Pergunta> perguntas = [];
  Pergunta perguntaAtual = Pergunta('', true);

  GerenciarQuiz(){
    this.perguntas = [
      Pergunta('O Sol é uma estrela?', true),
      Pergunta('A construção da Torre Eiffel foi concluída em 31 de março de 1887', false),
      Pergunta('O Brasil é o único país da América do Sul que fala português?', true),
      Pergunta('A água ferve a 100 graus Celsius?', true),
      Pergunta('O crânio é o osso mais forte do corpo humano', false),
      Pergunta('O sistema solar tem 9 planetas?', false),
      Pergunta('A gravidade é mais forte na Lua do que na Terra?', false),
      Pergunta('Os elefantes podem pular?', false),
      Pergunta('A caixa preta em um avião é preta', false),
      Pergunta('A lua é um planeta?', false),
      Pergunta('O Google foi inicialmente chamado de BackRub', true),
      Pergunta('O cérebro humano tem aproximadamente 100 bilhões de neurônios?', true),
      Pergunta('O átomo é a menor unidade da matéria?', true),
      Pergunta('A Grande Muralha da China é visível do espaço?', false),
      Pergunta('No Arizona, EUA, você pode ser condenado por cortar um cacto', true),
      Pergunta('A Lua possui atmosfera?', false),
      Pergunta('O Brasil é o maior produtor de café do mundo?', true),
      Pergunta('Na Califórnia, EUA, você não pode usar botas de cowboy a menos que tenha pelo menos duas vacas', true),
      Pergunta('A Terra é o único planeta do sistema solar com água líquida em sua superfície?', false),
      Pergunta('Os gatos têm cinco dedos nas patas dianteiras?', true),
    ];
    this.pontos = [];
    this.index = 0;
    this.erros = 0;
    this.acertos = 0;
    this.perguntaAtual = this.perguntas[this.index];
  }

  void setPergunta(){
    if(index < perguntas.length) this.perguntaAtual = this.perguntas[this.index];
  }

  void incrementarIndex(){
    this.index++;
  }

  void verificarResposta(bool resposta, int index){
    if(this.perguntas[index].isVerdade == resposta){
      pontos.add(Icon(Icons.check, color: Colors.green,));
      this.acertos++;
    }
    else{
      this.erros++;
      pontos.add(Icon(Icons.close, color: Colors.red,));
    }
    this.incrementarIndex();
    return;
  }

  bool verificaTermino(){
    if(this.index >= this.perguntas.length) return true;
    else return false;
  }

}