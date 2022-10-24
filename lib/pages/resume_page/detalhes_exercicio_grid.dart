import 'package:flutter/material.dart';
import 'package:study_app/domain/materia.dart';
import 'package:study_app/database/DB.dart';

class DetalhesExercicioGrid extends StatefulWidget {
  const DetalhesExercicioGrid({Key? key, required this.exercicio})
      : super(key: key);

  final Exercicio exercicio;
  @override
  State<DetalhesExercicioGrid> createState() => _DetalhesExercicioGridState();
}

class _DetalhesExercicioGridState extends State<DetalhesExercicioGrid> {
  Exercicio get pacote => widget.exercicio;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAF0D7),
      appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                  ),
                  DB.lusBody('Resumos'),
                ],
              ),
              TextButton(
                onPressed: () {},
                child: const Icon(Icons.search, color: Colors.white),
              ),
            ],
          ),
          backgroundColor: const Color(0xFF8CC0DE)),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Center(
              child: Text(
                pacote.titulo,
                style: TextStyle(
                  color: DB.tema.textcolor2,
                  fontSize: 24,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              pacote.text,
              style: TextStyle(
                color: DB.tema.textcolor3,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
