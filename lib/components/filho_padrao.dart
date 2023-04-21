import 'package:flutter/material.dart';

import '../models/constantes.dart';

class FilhoPadrao extends StatelessWidget {
  const FilhoPadrao({super.key, required this.icone, required this.texto});

  final IconData icone;
  final String texto;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icone,
          size: 85.0,
          color: Colors.white,
        ),
        const SizedBox(height: 10.0),
        Text(texto, style: kEstiloTexto)
      ],
    );
  }
}
