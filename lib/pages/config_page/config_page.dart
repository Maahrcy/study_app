import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:study_app/pages/home_page/vertical_navbar_widget.dart';
import 'package:study_app/database/DB.dart';

class ConfigPage extends StatefulWidget {
  const ConfigPage({Key? key}) : super(key: key);

  @override
  State<ConfigPage> createState() => _ConfigPageState();
}

class _ConfigPageState extends State<ConfigPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: const Text('Configurações'),
        backgroundColor: Colors.black,
      ),
      drawer: const VerticalNavBar(),
      body: buildBody(context),
    );
  }

  buildBody(context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, top: 20.0),
        child: ListView(
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return const AlertDialog(
                        title: Text(
                          "Mudar o tema",
                        ),
                        content: Text(
                            "Futuramente, quando clicar aqui, irá mudar o tema do app."),
                      );
                    },
                  );
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  'Tema',
                  style: TextStyle(
                    fontSize: 20,
                    color: DB.tema.textcolor1,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return const AlertDialog(
                        title: Text("Contate-nos"),
                        content: Text(
                            "E-mail : example@gmail.com\nTelefone: (82) 99812 3456"),
                      );
                    },
                  );
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  'Contate-nos',
                  style: TextStyle(
                    fontSize: 20,
                    color: DB.tema.textcolor1,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return const AlertDialog(
                        title: Text("Sobre nós"),
                        content:
                            Text("Bem, preciso consultar os outros primeiro"),
                      );
                    },
                  );
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  'Sobre nós',
                  style: TextStyle(
                    fontSize: 20,
                    color: DB.tema.textcolor1,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment
                  .spaceBetween, //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //Padding(
                //padding: const EdgeInsets.all(8.0),),
                Text(
                  "Fonte",
                  style: TextStyle(
                    fontSize: 20,
                    color: DB.tema.textcolor1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return const AlertDialog(
                                  title: Text("Minus"),
                                  content: Text("Retirando tamanho na fonte"),
                                );
                              },
                            );
                          },
                          icon: const Icon(
                            CupertinoIcons.minus,
                            color: Colors.white,
                          )),
                      const SizedBox(
                        width: 30.0,
                      ),
                      IconButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return const AlertDialog(
                                  title: Text("Add"),
                                  content: Text("Adicionando tamanho na fonte"),
                                );
                              },
                            );
                          },
                          icon: const Icon(
                            CupertinoIcons.add,
                            color: Colors.white,
                          )),
                    ],
                  ),
                ),
              ],
            ),
            Center(
              child: Text(
                "Ainda em construção...",
                style: TextStyle(
                  color: DB.tema.textcolor1,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
