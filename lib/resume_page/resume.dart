import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:study_app/domain/resumo.dart';
import 'package:study_app/resume_page/resume_widget.dart';

import '../data/BD.dart';

class Resume extends StatefulWidget {
  const Resume({Key? key}) : super(key: key);

  @override
  State<Resume> createState() => _ResumeState();
}

class _ResumeState extends State<Resume> {
  List<Resumo> listaResumes = BD.listaResumes;

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
                  lusBody('Retornar'),
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
      body: buildBody(),
    );
  }

  lusBody(String materia){
    return Text(materia,
      style: const TextStyle(
        fontSize: 20,
        color: Colors.white,
      ),
    );
  }

  buildBody() {
    return Column(
      children: [
        const SizedBox(height: 20,),
        Text('Resumo',
          style: GoogleFonts.sriracha(
            fontSize: 28,
            color: const Color(0xffd9807c),
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        //Aqui embaixo vai ser feito o gribuild
        GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.36,
          ),
          itemCount: listaResumes.length,
          itemBuilder: (context, index) {
            return ResumeWidget(
              resume: listaResumes[index],
            );
          },
        ),
      ],
    );
  }
}
