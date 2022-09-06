import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExerciseWidget extends StatefulWidget {
  const ExerciseWidget({Key? key}) : super(key: key);

  @override
  State<ExerciseWidget> createState() => _ExerciseWidgetState();
}

class _ExerciseWidgetState extends State<ExerciseWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(child: Text("Exercícios"),)
    );
  }
}
