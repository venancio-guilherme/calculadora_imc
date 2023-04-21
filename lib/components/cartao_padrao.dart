import 'package:flutter/material.dart';

class CartaoPadrao extends StatelessWidget {
  const CartaoPadrao({super.key, this.cor, this.filhoCartao});

  final Color? cor;
  final Widget? filhoCartao;

  @override
  Widget build(BuildContext context) {
    return (Container(
      margin: const EdgeInsets.all(10.0),
      decoration:
          BoxDecoration(color: cor, borderRadius: BorderRadius.circular(20.0)),
      child: filhoCartao,
    ));
  }
}
