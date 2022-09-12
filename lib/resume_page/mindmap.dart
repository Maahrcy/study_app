import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../data/BD.dart';

class MindMapWidget extends StatefulWidget {
  const MindMapWidget({Key? key}) : super(key: key);

  @override
  State<MindMapWidget> createState() => _MindMapWidgetState();
}

class _MindMapWidgetState extends State<MindMapWidget> {
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
  buildBody() {
    return ListView(
      children: [
        const SizedBox(height: 20,),
        Text('Mapas Mentais',
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
