import 'package:flutter/material.dart';
import 'package:study_app/database/DB.dart';
import 'package:study_app/domain/resumo.dart';

class DetalhesResumoGrid extends StatefulWidget {
  const DetalhesResumoGrid({Key? key, required this.resume}) : super(key: key);

  final Resumo resume;
  @override
  State<DetalhesResumoGrid> createState() => _DetalhesResumoGridState();
}

class _DetalhesResumoGridState extends State<DetalhesResumoGrid> {
  Resumo get pacote => widget.resume;
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
        child: ListView(
          children: [
            Center(
              child: Text(
                pacote.titulo,
                style: TextStyle(
                  color: DB.tema.textcolor2,
                  fontSize: 24,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              pacote.text,
              style: TextStyle(
                color: DB.tema.textcolor3,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
