import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:study_app/domain/materia.dart';
import 'package:study_app/resume_page/exercise_widget.dart';

import '../data/BD.dart';

class Exercise extends StatefulWidget {
  const Exercise({Key? key}) : super(key: key);

  @override
  State<Exercise> createState() => _ExerciseState();
}

class _ExerciseState extends State<Exercise> {
  List<Exercicio> ListaExercicio = BD.ListaExercicioQui;

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
                  BD.lusBody('Retornar'),
                ],
              ),
              TextButton(onPressed: () {},
                child: Icon(Icons.search,
                    color: Colors.white),
              ),
            ],
          ),
          backgroundColor: Color(0xFF8CC0DE)
      ),
      body: buildBody(),
    );
  }

  buildBody() {
    return ListView(
      children: [
        const SizedBox(height: 20,),
        Text('Exercícios',
          style: GoogleFonts.sriracha(
            fontSize: 28,
            color: const Color(0xffd9807c),
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),

        GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 1,
            mainAxisSpacing: 1,
            childAspectRatio: 1.5,
          ),
          itemCount: ListaExercicio.length,
          itemBuilder: (context, index) {
            return ExerciseWidget(
              exercicio: ListaExercicio[index],
            );
          },
        ),
      ],
    );
  }
}