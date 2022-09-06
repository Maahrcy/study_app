import 'package:flutter/cupertino.dart';

class MindMapWidget extends StatefulWidget {
  const MindMapWidget({Key? key}) : super(key: key);

  @override
  State<MindMapWidget> createState() => _MindMapWidgetState();
}

class _MindMapWidgetState extends State<MindMapWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(child: Text("Mapas Mentais"),)
    );
  }
}
