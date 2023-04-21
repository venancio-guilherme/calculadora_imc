import 'package:flutter/material.dart';
import '../components/cartao_padrao.dart';
import '../models/constantes.dart';

class TelaResultados extends StatelessWidget {
  const TelaResultados(
      {super.key,
      this.resultadoIMC,
      this.resultadoTexto,
      this.interpretacao,
      this.numeroDoIMC});

  final String? resultadoIMC;
  final String? resultadoTexto;
  final String? interpretacao;
  final double? numeroDoIMC;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'CALCULADORA IMC',
          style: kEstiloTextoInferior,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Container(
                width: double.infinity,
                margin: const EdgeInsets.only(top: 10.0),
                child: Text(
                  'Resultado',
                  style: kEstiloTitulo,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: CartaoPadrao(
              cor: numeroDoIMC! >= 25 || numeroDoIMC! <= 18.5
                  ? Colors.red
                  : Colors.teal,
              filhoCartao: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultadoTexto!.toUpperCase(),
                    style: kEstiloGrupoIMC,
                    textAlign: TextAlign.center,
                  ),
                  Text(resultadoIMC!.toUpperCase(), style: kEstiloIMC),
                  Text(
                    interpretacao!.toUpperCase(),
                    style: kFraseResultado,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              width: double.infinity,
              height: kAlturaContainerInferior,
              color: kCorContainerInferior,
              child: Center(
                  child: Text(
                'RECALCULAR',
                style: kEstiloTextoInferior,
              )),
            ),
          ),
        ],
      ),
    );
  }
}
