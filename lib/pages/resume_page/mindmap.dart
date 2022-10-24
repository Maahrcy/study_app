import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:study_app/database/DB.dart';

class MindMapWidget extends StatefulWidget {
  const MindMapWidget({Key? key}) : super(key: key);

  @override
  State<MindMapWidget> createState() => _MindMapWidgetState();
}

class _MindMapWidgetState extends State<MindMapWidget> {
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
                  DB.lusBody('Retornar'),
                ],
              ),
              TextButton(
                onPressed: () {},
                child: const Icon(Icons.search, color: Colors.white),
              ),
            ],
          ),
          backgroundColor: const Color(0xFF8CC0DE)),
      body: buildBody(),
    );
  }

  buildBody() {
    return ListView(
      children: [
        const SizedBox(
          height: 20,
        ),
        Text(
          'Mapas Mentais',
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
