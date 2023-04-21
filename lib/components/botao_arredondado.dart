import 'package:flutter/material.dart';

import '../models/constantes.dart';

class BotaoArredondado extends StatelessWidget {
  const BotaoArredondado({super.key, required this.icone});

  final IconData icone;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {},
      shape: const CircleBorder(),
      fillColor: kCorContainerInferior,
      elevation: 6.0,
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      child: Icon(icone),
    );
  }
}
