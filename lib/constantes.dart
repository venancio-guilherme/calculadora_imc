import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'tela_principal.dart';


const Color kCorDoTema = Color(0xFFF0F2F2);
const Color kCorInativaCartaoPadrao = Color(0xFF82D9D9);
const Color kCorAtivaCartaoPadrao = Color(0xFF6FBFBF);
const Color kCorContainerInferior = Color(0xFF24CC5DB);
const double kAlturaContainerInferior = 80.0;
const TextStyle kEstiloTexto = TextStyle(fontSize: 20.0, color:Color(0XFF010326),fontFamily: 'Lilita', fontWeight: FontWeight.w400);
const TextStyle kEstiloNumero = TextStyle(fontSize: 50.0, color: Colors.white, fontFamily: 'Lilita', fontWeight: FontWeight.w400);
const TextStyle kEstiloTextoInferior = TextStyle(fontSize: 25.0, color:Colors.white,fontFamily: 'Lilita', fontWeight: FontWeight.w400);

const TextStyle kEstiloTitulo = TextStyle(fontSize: 40.0, color:Color(0XFF010326),fontFamily: 'Lilita', fontWeight: FontWeight.w400);

const TextStyle kEstiloIMC = TextStyle(fontSize: 100.0, color:Colors.white,fontFamily: 'Lilita', fontWeight: FontWeight.w400);

const TextStyle kEstiloGrupoIMC = TextStyle(fontSize: 40.0, color:Colors.white,fontFamily: 'Lilita', fontWeight: FontWeight.w400);
//TODO criar um if else para mudar a cor do Container

const TextStyle kFraseResultado = TextStyle(fontSize: 22.0, color:Colors.white,fontFamily: 'Lilita', fontWeight: FontWeight.w400);



ThemeData Tema = ThemeData.dark().copyWith(
appBarTheme: AppBarTheme(color:Color(0xFF355E5C), ),
primaryColor: kCorDoTema,
scaffoldBackgroundColor: kCorDoTema);