import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:study_app/pages/resume_page/detalhes_resumo_grid.dart';
import 'package:study_app/database/DB.dart';
import 'package:study_app/domain/resumo.dart';

class ResumeWidget extends StatefulWidget {
  const ResumeWidget({Key? key, required this.resume}) : super(key: key);

  final Resumo resume;
  @override
  State<ResumeWidget> createState() => _ResumeWidgetState();
}

class _ResumeWidgetState extends State<ResumeWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return DetalhesResumoGrid(
                resume: widget.resume,
              );
            },
          ),
        );
      },
      child: Card(
        color: const Color(0xFFFFD9C0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Text(
              widget.resume.titulo,
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
