import 'dart:math';


class CalculadoraIMC {
  CalculadoraIMC({required this.altura, required this.peso});

  final int altura;
  final int peso;
  double? _imc ;

  double? numeroIMC (){
    return peso / pow(altura / 100, 2);
  }
  String calcularIMC() {
    _imc = peso / pow(altura / 100, 2);
    return _imc!.toStringAsFixed(1);
  }

  String obterResultado() {
    if (_imc! < 18.5) {
    return "Voce esta abaixo do seu peso ideal";
    } else if (_imc! >= 18.5 && _imc! <= 24.9){
    return "PESO IDEAL";
    }  else if (_imc! >= 25.0 && _imc! <= 29.9){
    return "sobrepeso";
}   else if (_imc! >= 30.0 && _imc! <= 34.9){
    return "Obesidade grau I";
}   else{
  return "Obesidade grau II (severa)";
}

    }

  String interpretacaoResultado(){
    if (_imc! < 18.5) {
      return "Voce precisa de uma dieta hipercalorica";
    } else if (_imc! >= 18.5 && _imc! <= 24.9){
      return "Parabens! Voce esta no peso ideal";
    }  else if (_imc! >= 25.0 && _imc! <= 29.9){
      return "Voce precisa de uma dieta hipocalorica";
    }   else if (_imc! >= 30.0 && _imc! <= 34.9){
      return "Voce precisa de uma dieta hipocalorica";
    }   else{
      return "Voce precisa de uma dieta hipocalorica";
    }
  }

}