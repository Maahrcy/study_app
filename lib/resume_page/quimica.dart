import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:study_app/resume_page/exercise.dart';
import 'package:study_app/resume_page/mindmap.dart';
import 'package:study_app/resume_page/desc_pag.dart';
import 'package:study_app/resume_page/resume.dart';
import 'package:study_app/resume_page/resume_widget.dart';

import '../data/BD.dart';

class Quimica extends StatefulWidget{
  const Quimica({Key? key}) : super(key: key);

  @override
  _Quimica createState()=> _Quimica();
}

class _Quimica extends State<Quimica>{
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
                BD.lusBody('Química'),
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

  buildBody(){
    return ListView(
      children: [
        const SizedBox(height: 20),
        Text(
          'Começe seus estudos!',
          style: GoogleFonts.sriracha(
            fontSize: 28,
            color: const Color(0xffd9807c),
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
                  return Resume();
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
      color: const  Color(0xFFFFD9C0),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: const BoxDecoration(
        ),
        child: Row(
          children: [
            const Icon(Icons.menu_book,),
            //color: Color(0xffd)),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(text,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                    fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    ),
  );
}
