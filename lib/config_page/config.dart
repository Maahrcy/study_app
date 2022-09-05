import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:study_app/home_page/vertical_navbar_widget.dart';

class ConfigPage extends StatefulWidget {
  const ConfigPage({Key? key}) : super(key: key);

  @override
  State<ConfigPage> createState() => _ConfigPageState();
}

class _ConfigPageState extends State<ConfigPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configurações'),
        backgroundColor: Color(0xFF8CC0DE),
      ),
      drawer: VerticalNavBar(),
      body: buildBody(context),
    );
  }

  buildBody(context) {
    return Container(
      child: ListView(
        children: [
          /*InkWell(
            onTap: () {
              BD.setTema(),
            },
            child: Text('Tema'),
          ),
          */
          Center(child: Text("Ainda em construção"),)
        ],
      ),
    );
  }
}