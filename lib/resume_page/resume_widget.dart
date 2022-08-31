import 'package:flutter/cupertino.dart';

class ResumeWidget extends StatefulWidget {
  const ResumeWidget({Key? key}) : super(key: key);

  @override
  State<ResumeWidget> createState() => _ResumeWidgetState();
}

class _ResumeWidgetState extends State<ResumeWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(child: Text("Resumo"),)
    );
  }
}
