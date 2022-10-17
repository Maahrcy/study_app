import 'package:flutter/material.dart';
import 'package:study_app/domain/resumo.dart';

class Materia {
  final String titulo; /*varchar*/
  final List<Exercicio> exercicio; /*varchar*/
  final List<Mindmaps> mindmaps; /*varchar*/
  final List<Resumo> resumo; /*varchar*/

  Materia({
    required this.titulo,
    required this.exercicio,
    required this.mindmaps,
    required this.resumo,
  });
}

/*CLASSES*/

class Mindmaps {
  final Image image;

  Mindmaps({
    required this.image,
});
}

class Exercicio {
  final String titulo;
  final String text;

  Exercicio({
    required this.titulo,
    required this.text,
});
}
