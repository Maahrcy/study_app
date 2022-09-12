import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:study_app/domain/materia.dart';
import '../data/BD.dart';

class DetalhesExercicioGrid extends StatefulWidget {
  const DetalhesExercicioGrid({Key? key, required this.exercicio}) : super(key: key);

  final Exercicio exercicio;
  @override
  State<DetalhesExercicioGrid> createState() => _DetalhesExercicioGridState();
}

class _DetalhesExercicioGridState extends State<DetalhesExercicioGrid> {
  Exercicio get pacote => widget.exercicio;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAF0D7),
      appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                  ),
                  BD.lusBody('Resumos'),
                ],
              ),
              TextButton(onPressed: (){},
                child: Icon(Icons.search,
                    color: Colors.white),
              ),
            ],
          ),
          backgroundColor: Color(0xFF8CC0DE)
      ),
      body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: [
                Center(
                  child: Text(pacote.titulo,
                  style: TextStyle(
                    color: BD.tema.textcolor2,
                    fontSize: 24,
                  ),),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  pacote.text,
                  style: TextStyle(
                    color: BD.tema.textcolor3,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
      ),
    );
  }
}
