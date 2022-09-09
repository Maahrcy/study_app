import 'package:flutter/material.dart';

import '../domain/resumo.dart';
import '../domain/tema.dart';

class BD {
  static Resumo resumo = Resumo(titulo: 'quaklquer', text: [Text('qualquer')]);
  static List<Resumo> listaResumes = [
    Resumo(titulo: 'Isomeria', text: [Text('  Isomeria química é um fenômeno observado quando duas ou mais substâncias orgânicas têm a mesma fórmula molecular, mas estrutura molecular e propriedades diferentes. \n '
        '\n As substâncias químicas com essas características são denominadas isômeros. \n '
        '\n O termo deriva das palavras gregas iso = igual e meros = partes, ou seja, partes iguais. \n '
        '\nExistem diferentes tipos de isomeria: \n \n '),
        resumo.MakeBold('Isomeria plana:'),
        Text('Os compostos são identificados através das fórmulas estruturais planas. Divide-se em isomeria de cadeia, isomeria de função, isomeria de posição, isomeria de compensação e isomeria de tautomeria. \n '
        '\n Isomeria espacial: A estrutura molecular dos compostos apresenta diferentes estruturas espaciais. Divide-se em isomeria geométrica e isomeria óptica.')]
        ),
    //Resumo(titulo: 'Resumo 2', text: '  Lorem input não sei oq não sei oq não sei oq'),
    //Resumo(titulo: 'Resumo 3', text: '  Lorem input não sei oq não sei oq não sei oq'),
   // Resumo(titulo: 'Resumo 4', text: '  Lorem input não sei oq não sei oq não sei oq'),
   // Resumo(titulo: 'Resumo 4', text: '  Lorem input não sei oq não sei oq não sei oq')
  ];

  static Tema tema = Tema(numtema: 1, textcolor1: Colors.white, textcolor2: Color(0xffd9807c), textcolor3: Colors.black);

  static getTema(){
    return tema;
}
  static lusBody(String materia){
    return Text(materia,
      style: const TextStyle(
        fontSize: 20,
        color: Colors.white,
      ),
    );
  }
}

