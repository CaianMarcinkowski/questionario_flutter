import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() quandoReiniciarQuestionario;

  Resultado(this.pontuacao, this.quandoReiniciarQuestionario);

  String get fraseResultado {
    if (pontuacao < 8) {
      return "Parabéns!";
    } else if (pontuacao < 12) {
      return "Tu é brabo!";
    } else if (pontuacao < 16) {
      return "Amazing!";
    } else {
      return "Pika!";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(fontSize: 28),
          ),
        ),
        ElevatedButton(
          onPressed: quandoReiniciarQuestionario,
          child: Text('Reiniciar?'),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red, // Cor de fundo
            foregroundColor: Colors.white, // Cor do texto
          ),
        )
      ],
    );
  }
}
