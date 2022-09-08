import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:study_app/resume_page/quimica.dart';
import '';
import '../home_page/vertical_navbar_widget.dart';

class ResumeWidget extends StatefulWidget {
  const ResumeWidget({Key? key}) : super(key: key);

  @override
  State<ResumeWidget> createState() => _ResumeWidgetState();
}

class _ResumeWidgetState extends State<ResumeWidget> {@override
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

lusBody(String funcao){
  return Text(funcao,
    style: const TextStyle(
      fontSize: 20,
      color: Colors.white,
    ),
  );
}
  buildBody() {
    return ListView(
      children: [
        const SizedBox(height: 20,),
        Text('Resumos',
          style: GoogleFonts.sriracha(
            fontSize: 28,
            color: const Color(0xffd9807c),
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
