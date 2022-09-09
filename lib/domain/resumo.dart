import 'package:flutter/material.dart';

class Resumo {
  final String titulo;
  //final List<Text> text;
  final String text;
  //final Color? color;
  Resumo({
    required this.titulo,
    required this.text,
    //required this.color,// = BD.tema.textcolor3,
  });

/*
  Text MakeBold(String text){
    return Text(text,
    style: TextStyle(
      fontWeight: FontWeight.bold,
    ),);
  }

 */
/*
  List<Text> ApllyStyle(List<Text> text, TextStyle? estilo){
    for(int i =0; i<text.length; i++){
      text[i].style?.apply(estilo.color, estilo?.backgroundColor, decoration: estilo?.decoration, estilo?.decorationColor, decorationStyle: estilo.decorationStyle, estilo.decorationThickness, );
    }
    return text;
  }

 */
}
