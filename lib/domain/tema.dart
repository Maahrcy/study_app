import 'package:flutter/material.dart';

class Tema {
  final int numtema; /*int*/
  final Color? textcolor1; /*varchar*/
  final Color? textcolor2; /*varchar*/
  final Color? textcolor3; /*varchar*/

  /*CLASSE*/
  Tema({
    required this.numtema,
    required this.textcolor1,
    required this.textcolor2,
    required this.textcolor3,
  });
  /*CONF*/
  setTema(numtema) {
    numtema++;
    Color? textcolor1;
    Color? textcolor2;
    Color? textcolor3;

    switch (numtema) {
      case 1:
        textcolor1 = Colors.white;
        textcolor2 = const Color(0xffd9807c);
        textcolor3 = Colors.black;
        break;
      case 2:
        break;
      case 3:
        numtema = 0;
        setTema(numtema);
        break;
    }
    return Tema(
        numtema: numtema,
        textcolor1: textcolor1,
        textcolor2: textcolor2,
        textcolor3: textcolor3);
  }
}
