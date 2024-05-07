class Pergunta{
  String pergunta;
  bool isVerdade;

  Pergunta(this.pergunta, this.isVerdade);

  bool getIsVerdade(){
    return this.isVerdade;
  }

  String getPergunta(){
    return this.pergunta;
  }
}