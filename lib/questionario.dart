import 'package:flutter/material.dart';
import './questao.dart';
import './respostas.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) quandoResponder;

  Questionario({
    required this.perguntaSelecionada,
    required this.perguntas,
    required this.quandoResponder,
  });

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = temPerguntaSelecionada
        ? (perguntas[perguntaSelecionada]['respostas']
            as List<Map<String, Object>>)
        : [];

    return Column(
      children: [
        Questao(perguntas[perguntaSelecionada]['texto'] as String),
        ...respostas
            .map((resp) => Respostas(
                  resp['texto'] as String,
                  () => quandoResponder(resp['pontuacao'] as int),
                ))
            .toList(),
      ],
    );
  }
}
