import 'package:flutter/material.dart';
import 'package:study_app/domain/resumo.dart';
import 'package:study_app/pages/resume_page/resume_widget.dart';
import 'package:study_app/database/DB.dart';

class Resume extends StatefulWidget {
  const Resume({Key? key}) : super(key: key);

  @override
  State<Resume> createState() => _ResumeState();
}

class _ResumeState extends State<Resume> {
  List<Resumo> listaResumes = DB.listaResumesMat;

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
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 1,
            mainAxisSpacing: 1,
            childAspectRatio: 1.5,
          ),
          itemCount: listaResumes.length,
          itemBuilder: (context, index) {
            return ResumeWidget(
              resume: listaResumes[index],
            );
          },
        ),
      ),
    );
  }

/*
  buildBody() {
    return ListView(
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

      ],
    );
  }
 */
}
