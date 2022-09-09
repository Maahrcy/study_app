import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../data/BD.dart';
import '../domain/resumo.dart';

class DetalhesGrid extends StatefulWidget {
  const DetalhesGrid({Key? key, required this.resume}) : super(key: key);

  final Resumo resume;
  @override
  State<DetalhesGrid> createState() => _DetalhesGridState();
}

class _DetalhesGridState extends State<DetalhesGrid> {
  Resumo get pacote => widget.resume;
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
                  BD.lusBody('Resumos'),
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
      body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: [
                Center(
                  child: Text(pacote.titulo,
                  style: TextStyle(
                    color: BD.tema.textcolor2,
                    fontSize: 24,
                  ),),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  '${pacote.text}',
                  style: TextStyle(
                    color: BD.tema.textcolor3,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
      ),
    );
  }
}
