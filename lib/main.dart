import 'package:flutter/material.dart';
import 'models/constantes.dart';
import 'views/tela_principal.dart';
import 'views/tela_resultados.dart';

void main() => runApp(const CalculadoraIMC());

class CalculadoraIMC extends StatelessWidget {
  const CalculadoraIMC({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: tema,
        initialRoute: '/',
        routes: {
          '/': (context) => const TelaPrincipal(),
          '/resultado': (context) => const TelaResultados()
        });
  }
}
