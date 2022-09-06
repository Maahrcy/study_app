import 'dart:js';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Resumos_pages/Resumo_1.dart';

class Resumo extends StatefulWidget {
  const Resumo({Key? key}) : super(key: key);

  @override
  State<Resumo> createState() => _ResumoState();
}

class _ResumoState extends State<Resumo> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: buildBody(),
          backgroundColor: Color(0XFFFAF0D7),
        );
  }
}

buildBody() {
  return ListView(
    children: [
      const SizedBox(height: 20),
      const Text(
        "Resumos: ",
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Color(0xFFFFC09A),
        ),
        textAlign: TextAlign.center,
      ),
      InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const Resumo();
              },
            ),
          );
        },
        child: buildField('Resumo'),
      ),
      Text("Átomos")
    ],

  );
}

buildField(String text) {
  return Container(
    height: 50,
    margin: const EdgeInsets.fromLTRB(10, 16, 10, 15),
    padding: const EdgeInsets.all(6),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: const Color(0xFFFFD9C0),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: const BoxDecoration(),
        child: Row(
          children: [
            const Icon(Icons.menu_book,
              color: Colors.white,),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                text,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    ),
  );
}