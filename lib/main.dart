import 'package:flutter/material.dart';
import 'constantes.dart';
import 'tela_principal.dart';
import 'tela_resultados.dart';



void main() => runApp(CalculadoraIMC());

class CalculadoraIMC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Tema,
      initialRoute: '/',
      routes:{'/' : (context) => TelaPrincipal(),
      '/resultado' : (context) => TelaResultados()}

    );
  }
}
