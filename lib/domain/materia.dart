import 'package:flutter/material.dart';
import 'package:study_app/domain/resumo.dart';

class Materia {
  final String titulo;
  final List<Exercicio> exercicio;
  final List<Mindmaps> mindmaps;
  final List<Resumo> resumo;

  Materia({
    required this.titulo,
    required this.exercicio,
    required this.mindmaps,
    required this.resumo,
  });
}

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
