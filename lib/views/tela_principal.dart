import 'package:calculadora_imc/views/tela_resultados.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/botao_inferior.dart';
import '../components/cartao_padrao.dart';
import '../components/filho_padrao.dart';
import '../models/constantes.dart';
import 'package:calculadora_imc/controllers/calculadora_imc.dart';

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({super.key});

  @override
  // ignore: library_private_types_in_public_api
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
        title: const Text(
          'CALCULADORA IMC',
          style: kEstiloTextoInferior,
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
                      filhoCartao: const FilhoPadrao(
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
                      filhoCartao: const FilhoPadrao(
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
                  const Text('ALTURA', style: kEstiloTexto),
                  const SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(altura.toString(), style: kEstiloNumero),
                      const Text('cm', style: kEstiloTexto),
                    ],
                  ),
                  Slider(
                    activeColor: const Color(0xFF2D4F5E),
                    inactiveColor: const Color(0XFFB1D4E3),
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
                    margin: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: kCorAtivaCartaoPadrao,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'PESO',
                          style: kEstiloTexto,
                        ),
                        Text(
                          peso.toString(),
                          style: kEstiloNumero,
                        ),
                        const SizedBox(height: 10.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RawMaterialButton(
                              onPressed: () {
                                setState(() {
                                  peso++;
                                });
                              },
                              shape: const CircleBorder(),
                              fillColor: kCorContainerInferior,
                              elevation: 6.0,
                              constraints: const BoxConstraints.tightFor(
                                width: 56.0,
                                height: 56.0,
                              ),
                              child: const Icon(FontAwesomeIcons.plus),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            RawMaterialButton(
                              onPressed: () {
                                setState(() {
                                  peso--;
                                });
                              },
                              shape: const CircleBorder(),
                              fillColor: kCorContainerInferior,
                              elevation: 6.0,
                              constraints: const BoxConstraints.tightFor(
                                width: 56.0,
                                height: 56.0,
                              ),
                              child: const Icon(FontAwesomeIcons.minus),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: kCorAtivaCartaoPadrao,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'IDADE',
                          style: kEstiloTexto,
                        ),
                        Text(
                          idade.toString(),
                          style: kEstiloNumero,
                        ),
                        const SizedBox(height: 10.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RawMaterialButton(
                              onPressed: () {
                                setState(() {
                                  idade++;
                                });
                              },
                              shape: const CircleBorder(),
                              fillColor: kCorContainerInferior,
                              elevation: 6.0,
                              constraints: const BoxConstraints.tightFor(
                                width: 56.0,
                                height: 56.0,
                              ),
                              child: const Icon(FontAwesomeIcons.plus),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            RawMaterialButton(
                              onPressed: () {
                                setState(() {
                                  idade--;
                                });
                              },
                              shape: const CircleBorder(),
                              fillColor: kCorContainerInferior,
                              elevation: 6.0,
                              constraints: const BoxConstraints.tightFor(
                                width: 56.0,
                                height: 56.0,
                              ),
                              child: const Icon(FontAwesomeIcons.minus),
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
              aoPressionar: () {
                CalculadoraIMC calc =
                    CalculadoraIMC(altura: altura, peso: peso);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => TelaResultados(
                            resultadoIMC: calc.calcularIMC(),
                            resultadoTexto: calc.obterResultado(),
                            interpretacao: calc.interpretacaoResultado(),
                            numeroDoIMC: calc.numeroIMC(),
                          )),
                );
              },
              tituloBotao: 'CALCULAR'),
        ],
      ),
    );
  }
}
