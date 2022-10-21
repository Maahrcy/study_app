import 'package:flutter/material.dart';
import '../domain/materia.dart';
import '../domain/resumo.dart';
import '../domain/tema.dart';

class DB {

  static List<Materia> listaMaterias = [
    Materia(titulo: 'Matemática', exercicio: ListaExercicioMat, mindmaps: [], resumo: listaResumesMat,),
    Materia(titulo: 'Portugûes', exercicio: ListaExercicioPor, mindmaps: [], resumo: listaResumesPor,),
    Materia(titulo: 'Química', exercicio: ListaExercicioQui, mindmaps: [], resumo: listaResumesMat,),
    Materia(titulo: 'História', exercicio: ListaExercicioHis, mindmaps: [], resumo: listaResumesHis,),
    Materia(titulo: 'Geografia', exercicio: ListaExercicioGeo, mindmaps: [], resumo: listaResumesGeo,),
    Materia(titulo: 'Biologia', exercicio:ListaExercicioBio, mindmaps: [], resumo: listaResumesBio,),
    Materia(titulo: 'Física', exercicio: ListaExercicioFis, mindmaps: [], resumo: listaResumesFis,),
  ];

  static List<Exercicio> ListaExercicioMat = [
    Exercicio(
        titulo: 'Exercício 1',
        text: 'text'),
    Exercicio(
        titulo: 'Exercício 1',
        text: 'text'),
    Exercicio(
        titulo: 'Exercício 1',
        text: 'text'),
  ];

  static List<Resumo> listaResumesMat = [
    Resumo(
        titulo: 'Resumo 1',
        text: '  Lorem input não sei oq não sei oq não sei oq'),
    Resumo(
        titulo: 'Resumo 2',
        text: '  Lorem input não sei oq não sei oq não sei oq'),
    Resumo(
        titulo: 'Resumo 3',
        text: '  Lorem input não sei oq não sei oq não sei oq'),
    Resumo(
        titulo: 'Resumo 4',
        text: '  Lorem input não sei oq não sei oq não sei oq'),
    Resumo(
        titulo: 'Resumo 5',
        text: '  Lorem input não sei oq não sei oq não sei oq')
  ];

  static List<Exercicio> ListaExercicioPor = [
    Exercicio(
        titulo: 'Exercício 1',
        text: 'text'),
    Exercicio(
        titulo: 'Exercício 1',
        text: 'text'),
    Exercicio(
        titulo: 'Exercício 1',
        text: 'text'),
  ];

  static List<Resumo> listaResumesPor = [
    Resumo(
        titulo: 'Resumo 1',
        text: '  Lorem input não sei oq não sei oq não sei oq'),
    Resumo(
        titulo: 'Resumo 2',
        text: '  Lorem input não sei oq não sei oq não sei oq'),
    Resumo(
        titulo: 'Resumo 3',
        text: '  Lorem input não sei oq não sei oq não sei oq'),
    Resumo(
        titulo: 'Resumo 4',
        text: '  Lorem input não sei oq não sei oq não sei oq'),
    Resumo(
        titulo: 'Resumo 5',
        text: '  Lorem input não sei oq não sei oq não sei oq')
  ];

  static List<Exercicio> ListaExercicioQui = [
    Exercicio(
        titulo: 'Exercício 1',
        text: 'text'),
    Exercicio(
        titulo: 'Exercício 1',
        text: 'text'),
    Exercicio(
        titulo: 'Exercício 1',
        text: 'text'),
  ];

  static List<Resumo> listaResumesQui = [
    Resumo(
        titulo: 'Isomeria',
        text:
            '  Isomeria química é um fenômeno observado quando duas ou mais substâncias orgânicas têm a mesma fórmula molecular, mas estrutura molecular e propriedades diferentes. \n '
            '\n As substâncias químicas com essas características são denominadas isômeros. \n '
            '\n O termo deriva das palavras gregas iso = igual e meros = partes, ou seja, partes iguais. \n '
            '\nExistem diferentes tipos de isomeria: \n \n '
            'Isomeria plana:'
            'Os compostos são identificados através das fórmulas estruturais planas. Divide-se em isomeria de cadeia, isomeria de função, isomeria de posição, isomeria de compensação e isomeria de tautomeria. \n '
            '\n Isomeria espacial: A estrutura molecular dos compostos apresenta diferentes estruturas espaciais. Divide-se em isomeria geométrica e isomeria óptica.'),
    Resumo(
        titulo: 'Resumo 2',
        text: '  Lorem input não sei oq não sei oq não sei oq'),
    Resumo(
        titulo: 'Resumo 3',
        text: '  Lorem input não sei oq não sei oq não sei oq'),
    Resumo(
        titulo: 'Resumo 4',
        text: '  Lorem input não sei oq não sei oq não sei oq'),
    Resumo(
        titulo: 'Resumo 5',
        text: '  Lorem input não sei oq não sei oq não sei oq')
  ];


  static List<Exercicio> ListaExercicioHis = [
    Exercicio(
        titulo: 'Exercício 1',
        text: 'text'),
    Exercicio(
        titulo: 'Exercício 1',
        text: 'text'),
    Exercicio(
        titulo: 'Exercício 1',
        text: 'text'),
  ];

  static List<Resumo> listaResumesHis = [
    Resumo(
        titulo: 'Resumo 1',
        text: '  Lorem input não sei oq não sei oq não sei oq'),
    Resumo(
        titulo: 'Resumo 2',
        text: '  Lorem input não sei oq não sei oq não sei oq'),
    Resumo(
        titulo: 'Resumo 3',
        text: '  Lorem input não sei oq não sei oq não sei oq'),
    Resumo(
        titulo: 'Resumo 4',
        text: '  Lorem input não sei oq não sei oq não sei oq'),
    Resumo(
        titulo: 'Resumo 5',
        text: '  Lorem input não sei oq não sei oq não sei oq')
  ];

  static List<Exercicio> ListaExercicioGeo = [
    Exercicio(
        titulo: 'Exercício 1',
        text: 'text'),
    Exercicio(
        titulo: 'Exercício 1',
        text: 'text'),
    Exercicio(
        titulo: 'Exercício 1',
        text: 'text'),
  ];

  static List<Resumo> listaResumesGeo = [
    Resumo(
        titulo: 'Resumo 1',
        text: '  Lorem input não sei oq não sei oq não sei oq'),
    Resumo(
        titulo: 'Resumo 2',
        text: '  Lorem input não sei oq não sei oq não sei oq'),
    Resumo(
        titulo: 'Resumo 3',
        text: '  Lorem input não sei oq não sei oq não sei oq'),
    Resumo(
        titulo: 'Resumo 4',
        text: '  Lorem input não sei oq não sei oq não sei oq'),
    Resumo(
        titulo: 'Resumo 5',
        text: '  Lorem input não sei oq não sei oq não sei oq')
  ];

  static List<Exercicio> ListaExercicioBio = [
    Exercicio(
        titulo: 'Exercício 1',
        text: 'text'),
    Exercicio(
        titulo: 'Exercício 1',
        text: 'text'),
    Exercicio(
        titulo: 'Exercício 1',
        text: 'text'),
  ];

  static List<Resumo> listaResumesBio = [
    Resumo(
        titulo: 'Resumo 1',
        text: '  Lorem input não sei oq não sei oq não sei oq'),
    Resumo(
        titulo: 'Resumo 2',
        text: '  Lorem input não sei oq não sei oq não sei oq'),
    Resumo(
        titulo: 'Resumo 3',
        text: '  Lorem input não sei oq não sei oq não sei oq'),
    Resumo(
        titulo: 'Resumo 4',
        text: '  Lorem input não sei oq não sei oq não sei oq'),
    Resumo(
        titulo: 'Resumo 5',
        text: '  Lorem input não sei oq não sei oq não sei oq')
  ];

  static List<Exercicio> ListaExercicioFis = [
    Exercicio(
        titulo: 'Exercício 1',
        text: 'text'),
    Exercicio(
        titulo: 'Exercício 1',
        text: 'text'),
    Exercicio(
        titulo: 'Exercício 1',
        text: 'text'),
  ];

  static List<Resumo> listaResumesFis = [
    Resumo(
        titulo: 'Resumo 1',
        text: '  Lorem input não sei oq não sei oq não sei oq'),
    Resumo(
        titulo: 'Resumo 2',
        text: '  Lorem input não sei oq não sei oq não sei oq'),
    Resumo(
        titulo: 'Resumo 3',
        text: '  Lorem input não sei oq não sei oq não sei oq'),
    Resumo(
        titulo: 'Resumo 4',
        text: '  Lorem input não sei oq não sei oq não sei oq'),
    Resumo(
        titulo: 'Resumo 5',
        text: '  Lorem input não sei oq não sei oq não sei oq')
  ];

  static Future<List<Materia>> getValues() async {
    await Future.delayed(const Duration(seconds: 10));
    return listaMaterias;
  }


  static Tema tema = Tema(
      numtema: 1,
      textcolor1: Colors.white,
      textcolor2: Color(0xffd9807c),
      textcolor3: Colors.black);

  static getTema() {
    return tema;
  }

  static lusBody(String materia) {
    return Text(
      materia,
      style: const TextStyle(
        fontSize: 20,
        color: Colors.white,
      ),
    );
  }


}
