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
      child: Center(
        child: ListView(
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  showDialog(
                    context: context,
                    builder: (BuildContext context){
                      return AlertDialog(
                        title: new Text("Mudar o tema"),
                        content: new Text("Futuramente, quando clicar aqui, irá mudar o tema do app."),
                      );
                    },
                  );
                });
              },
              child: Text('Tema'),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  showDialog(
                    context: context,
                    builder: (BuildContext context){
                      return AlertDialog(
                        title: new Text("Contate-nos"),
                        content: new Text("E-mail : example@gmail.com\nTelefone: (82) 99812 3456"),
                      );
                    },
                  );
                });
              },
              child: Text('Contate-nos'),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  showDialog(
                    context: context,
                    builder: (BuildContext context){
                      return AlertDialog(
                        title: new Text("Sobre nós"),
                        content: new Text("Bem, preciso consultar os outros primeiro"),
                      );
                    },
                  );
                });
              },
              child: Text('Sobre nós'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: (){
                    showDialog(
                    context: context,
                    builder: (BuildContext context){
                      return AlertDialog(
                        title: new Text("Add"),
                        content: new Text("Adicionando tamanho na fonte"),
                        );
                      },
                    );
                  }, icon: const Icon(CupertinoIcons.add, color: Colors.black,)),
                Text("Fonte"),
                IconButton(
                    onPressed: (){
                      showDialog(
                        context: context,
                        builder: (BuildContext context){
                          return AlertDialog(
                            title: new Text("Minus"),
                            content: new Text("Retirando tamanho na fonte"),
                          );
                        },
                      );
                    },
                    icon: const Icon(CupertinoIcons.minus, color: Colors.black,)),
              ],
            ),

            Center(child: Text("Ainda em construção..."),)
          ],
        ),
      ),
    );
  }
}