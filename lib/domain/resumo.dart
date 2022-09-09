import 'package:flutter/material.dart';

class Resumo {
  final String titulo;
  final List<Text> text;
  //final Color? color;
  Resumo({
    required this.titulo,
    required this.text,
    //required this.color,// = BD.tema.textcolor3,
  });


  Text MakeBold(String text){
    return Text(text,
    style: TextStyle(
      fontWeight: FontWeight.bold,
    ),);
  }

}
