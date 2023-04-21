import 'package:flutter/material.dart';

import '../models/constantes.dart';

class BotaoInferior extends StatelessWidget {
  const BotaoInferior(
      {super.key, required this.aoPressionar, required this.tituloBotao});

  final Function aoPressionar;
  final String tituloBotao;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        aoPressionar();
      },
      child: Container(
        width: double.infinity,
        height: kAlturaContainerInferior,
        color: kCorContainerInferior,
        child: Center(
            child: Text(
          tituloBotao,
          style: kEstiloTextoInferior,
        )),
      ),
    );
  }
}
