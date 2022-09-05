import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:study_app/resume_page/exercise_widget.dart';
import 'package:study_app/resume_page/mindmap_widget.dart';
import 'package:study_app/resume_page/resume_widget.dart';
import 'package:study_app/resume_page/desc_pag.dart';

class Resume extends StatefulWidget{
  const Resume({Key? key}) : super(key: key);

  @override
  _Resume createState()=> _Resume();
}

class _Resume extends State<Resume>{
  Desc item1 = Desc(
    titlo: 'Resumo',
  );
  Desc item2 = Desc(
    titlo: 'Exercícios',
  );
  Desc item3 = Desc(
    titlo: 'Mapas mentais',
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                ),
                lusBody('Química'),
              ],
            ),
            TextButton(onPressed: (){},
              child: Icon(Icons.search,
                  color: Colors.white),),
          ],
        ),
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

  buildBody(){
    return ListView(
      children: [
        const SizedBox(height: 20),
        const Text("Começe seus estudos",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return ResumeWidget();
                },
              ),
            );
          },
          child: buildField('Resumo'),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return ExerciseWidget();
                },
              ),
            );
          },
          child: buildField('Exercício'),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return MindMapWidget();
                },
              ),
            );
          },
          child:  buildField('Mapas mentais'),
        ),
        Container(
          height: 250,
          margin: const EdgeInsets.fromLTRB(10, 16, 10, 15),
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Image.network('data:image/jpeg;base64,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'),
        )
      ],
    );
  }
}

buildField(String text){
  return Container(
    height: 50,
    margin: const EdgeInsets.fromLTRB(10, 16, 10, 15),
    padding: const EdgeInsets.all(6),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: const Color(0xFFfea6a2),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: const BoxDecoration(
        ),
        child: Row(
          children: [
            const Icon(Icons.menu_book),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(text,
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            )
          ],
        ),
      ),
    ),
  );
}
