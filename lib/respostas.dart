import 'package:flutter/material.dart';

class Respostas extends StatelessWidget {
  final String texto;

  final void Function() selected;

  Respostas(this.texto, this.selected);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red, // Cor de fundo
            foregroundColor: Colors.white, // Cor do texto
          ),
          child: Text(texto),
          onPressed: selected),
    );
  }
}
