import 'package:flutter/cupertino.dart';

class MapasMentais extends StatefulWidget {
  const MapasMentais({Key? key}) : super(key: key);

  @override
  State<MapasMentais> createState() => _MapasMentaisState();
}

class _MapasMentaisState extends State<MapasMentais> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("Mapas Mentais"),)
    );
  }
}

