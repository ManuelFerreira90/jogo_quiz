import 'package:flutter/material.dart';
import '../constantes.dart';

class BotaoAcao extends StatelessWidget {
  const BotaoAcao({
    super.key,
    required this.texto,
    required this.aoPressionar,
    required this.corBotao,
  });
  
  final String texto;
  final VoidCallback aoPressionar;
  final Color corBotao;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: corBotao,
      ),
      child: Text(
        texto,
        style: kBotaoStyle,
      ),
      onPressed: aoPressionar,
    );
  }
}