import 'package:calculadora_imc/tela_resultados.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constantes.dart';
import 'package:calculadora_imc/calculadora_imc.dart';


class CartaoPadrao extends StatelessWidget {
  CartaoPadrao({ this.cor , this.filhoCartao});

  final Color? cor;
  final Widget? filhoCartao;


  @override
  Widget build(BuildContext context) {
    return (
        Container(
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              color: cor,
              borderRadius:  BorderRadius.circular(20.0)),
          child:filhoCartao,
        )
    );
  }
}


class FilhoPadrao extends StatelessWidget {
  FilhoPadrao({required this.icone , required this.texto});

  final IconData icone;
  final String texto;


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icone, size:85.0,color: Colors.white,),
        SizedBox(height: 10.0),
        Text(texto , style: kEstiloTexto)
      ],
    );
  }
}


class BotaoArredondado extends StatelessWidget {
  BotaoArredondado({required this.icone});

  final IconData icone;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {},
      shape: CircleBorder(),
      fillColor: kCorContainerInferior,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      child: Icon(icone),
    );
  }
}

class BotaoInferior extends StatelessWidget {
  BotaoInferior({required this.aoPressionar , required this.tituloBotao});

  final Function aoPressionar;
  final String tituloBotao;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        aoPressionar();
      },
      child: Container(
        width: double.infinity,
        height: kAlturaContainerInferior,
        color: kCorContainerInferior,
        child: Center(child: Text(tituloBotao, style: kEstiloTextoInferior,)),
      ),
    );
  }
}
