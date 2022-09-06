import 'package:flutter/cupertino.dart';

class Exercicios extends StatefulWidget {
  const Exercicios({Key? key}) : super(key: key);

  @override
  State<Exercicios> createState() => _ExerciciosState();
}

class _ExerciciosState extends State<Exercicios> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(child: Text("Exercícios"),)
    );
  }
}

