import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:study_app/domain/materia.dart';
import 'package:study_app/pages/resume_page/detalhes_exercicio_grid.dart';
import 'package:study_app/database/DB.dart';

class ExerciseWidget extends StatefulWidget {
  const ExerciseWidget({Key? key, required this.exercicio}) : super(key: key);

  final Exercicio exercicio;
  @override
  State<ExerciseWidget> createState() => _ExerciseWidgetState();
}

class _ExerciseWidgetState extends State<ExerciseWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return DetalhesExercicioGrid(exercicio: widget.exercicio);
            },
          ),
        );
      },
      child: Card(
        color: const  Color(0xFFFFD9C0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Text(
              widget.exercicio.titulo,
              style: GoogleFonts.sriracha(
                fontSize: 24,
                color: DB.tema.textcolor1,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

