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
      body: ListView(
        children: [
          Center(
            child: Column(
              children: [
                Text(pacote.titulo,
                style: TextStyle(
                  color: BD.getTema().gettextcolor2(),
                ),),
              ],
            ),
          )
        ],
      ),
    );
  }
}
