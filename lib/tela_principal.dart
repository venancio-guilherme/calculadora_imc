import 'package:calculadora_imc/tela_resultados.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constantes.dart';
import 'package:calculadora_imc/calculadora_imc.dart';
import 'componentes.dart';

class TelaPrincipal extends StatefulWidget {
  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

enum Sexo {
  masculino,
  feminino,
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  Color corMasculinoCartaoPadrao = kCorInativaCartaoPadrao;
  Color corFemininoCartaoPadrao = kCorInativaCartaoPadrao;

  int idade = 20;
  int peso = 80;
  int altura = 181;
  Sexo? sexoSelecionado;

  CalculadoraIMC? calc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'CALCULADORA IMC', style: kEstiloTextoInferior,
        ),
      ),
      body: Column(
        children: [
          // EXPANDED DA SELEÇAO DE SEXO
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(
                        () => sexoSelecionado = Sexo.masculino,
                      );
                    },
                    child: CartaoPadrao(
                      cor: sexoSelecionado == Sexo.masculino
                          ? kCorAtivaCartaoPadrao
                          : kCorInativaCartaoPadrao,
                      filhoCartao: FilhoPadrao(
                          icone: FontAwesomeIcons.mars, texto: 'HOMEM'),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(
                        () => sexoSelecionado = Sexo.feminino,
                      );
                    },
                    child: CartaoPadrao(
                      cor: sexoSelecionado == Sexo.feminino
                          ? kCorAtivaCartaoPadrao
                          : kCorInativaCartaoPadrao,
                      filhoCartao: FilhoPadrao(
                          icone: FontAwesomeIcons.venus, texto: 'MULHER'),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // EXPANDED DA ALTURA (SLIDER)
          Expanded(
            child: CartaoPadrao(
              cor: kCorAtivaCartaoPadrao,
              filhoCartao: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('ALTURA', style: kEstiloTexto),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(altura.toString(), style: kEstiloNumero),
                      Text('cm', style: kEstiloTexto),
                    ],
                  ),
                  Slider(
                    activeColor: Color(0xFF2D4F5E),
                    inactiveColor: Color(0XFFB1D4E3),
                    onChanged: (double novoValor) {
                      setState(() {
                        altura = novoValor.round();
                      });
                    },
                    value: altura.toDouble(),
                    min: 120.0,
                    max: 220.0,
                  ),
                ],
              ),
            ),
          ),

          //EXPANDED DO PESO E DA IDADE
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: kCorAtivaCartaoPadrao,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('PESO', style: kEstiloTexto,),
                        Text(
                          peso.toString(),
                          style: kEstiloNumero,
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RawMaterialButton(
                              onPressed: () {
                                setState(() {
                                  peso++;
                                });
                              },
                              shape: CircleBorder(),
                              fillColor: kCorContainerInferior,
                              elevation: 6.0,
                              constraints: BoxConstraints.tightFor(
                                width: 56.0,
                                height: 56.0,
                              ),
                              child: Icon(FontAwesomeIcons.plus),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RawMaterialButton(
                              onPressed: () {
                                setState(() {
                                  peso--;
                                });
                              },
                              shape: CircleBorder(),
                              fillColor: kCorContainerInferior,
                              elevation: 6.0,
                              constraints: BoxConstraints.tightFor(
                                width: 56.0,
                                height: 56.0,
                              ),
                              child: Icon(FontAwesomeIcons.minus),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: kCorAtivaCartaoPadrao,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('IDADE', style: kEstiloTexto,),
                        Text(
                          idade.toString(),
                          style: kEstiloNumero,
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RawMaterialButton(
                              onPressed: () {
                                setState(() {
                                  idade++;
                                });
                              },
                              shape: CircleBorder(),
                              fillColor: kCorContainerInferior,
                              elevation: 6.0,
                              constraints: BoxConstraints.tightFor(
                                width: 56.0,
                                height: 56.0,
                              ),
                              child: Icon(FontAwesomeIcons.plus),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RawMaterialButton(
                              onPressed: () {
                                setState(() {
                                  idade--;
                                });
                              },
                              shape: CircleBorder(),
                              fillColor: kCorContainerInferior,
                              elevation: 6.0,
                              constraints: BoxConstraints.tightFor(
                                width: 56.0,
                                height: 56.0,
                              ),
                              child: Icon(FontAwesomeIcons.minus),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BotaoInferior(
              aoPressionar: (){
                CalculadoraIMC calc = CalculadoraIMC(altura: altura, peso: peso);
                Navigator.push(context, MaterialPageRoute(builder: (context) => TelaResultados(
                  resultadoIMC: calc.calcularIMC(),
                  resultadoTexto: calc.obterResultado(),
                  interpretacao: calc.interpretacaoResultado(),
                  numeroDoIMC: calc.numeroIMC(),
                )),);

              },
              tituloBotao: 'CALCULAR'
          ),
        ],
      ),
    );
  }
}

