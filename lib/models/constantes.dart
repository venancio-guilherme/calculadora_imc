import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color kCorDoTema = Color(0xFFF0F2F2);
const Color kCorInativaCartaoPadrao = Color(0xFF82D9D9);
const Color kCorAtivaCartaoPadrao = Color(0xFF6FBFBF);
const Color kCorContainerInferior = Color(0xFF24CCDB);
const double kAlturaContainerInferior = 80.0;

TextStyle kEstiloTexto = GoogleFonts.lilitaOne(
    color: const Color(0XFF010326), fontSize: 20, fontWeight: FontWeight.w400);

TextStyle kEstiloNumero = GoogleFonts.lilitaOne(
    color: Colors.white, fontSize: 50, fontWeight: FontWeight.w400);

TextStyle kEstiloTextoInferior = GoogleFonts.lilitaOne(
    color: Colors.white, fontSize: 25, fontWeight: FontWeight.w400);

TextStyle kEstiloTitulo = GoogleFonts.lilitaOne(
    color: const Color(0XFF010326), fontSize: 40, fontWeight: FontWeight.w400);

TextStyle kEstiloIMC = GoogleFonts.lilitaOne(
    color: Colors.white, fontSize: 100, fontWeight: FontWeight.w400);

TextStyle kEstiloGrupoIMC = GoogleFonts.lilitaOne(
    color: Colors.white, fontSize: 40, fontWeight: FontWeight.w400);

TextStyle kFraseResultado = GoogleFonts.lilitaOne(
    color: Colors.white, fontSize: 22, fontWeight: FontWeight.w400);

ThemeData tema = ThemeData.dark().copyWith(
    appBarTheme: const AppBarTheme(
      color: Color(0xFF355E5C),
    ),
    primaryColor: kCorDoTema,
    scaffoldBackgroundColor: kCorDoTema);
