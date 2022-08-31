import 'dart:html';

import 'package:flutter/material.dart';
import 'package:study_app/home.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController userController = TextEditingController();
  TextEditingController passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: buildBody(),
      ),
    );
  }

  buildBody() {
    return Container(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'E-mail obrigatório';
                }
                return null;
              },
              decoration: InputDecoration(labelText: 'E-mail'),
              controller: userController,
            ),
            TextFormField(
              obscureText: true,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Senha obrigatória';
                }
                return null;
              },
              decoration: InputDecoration(labelText: 'Senha'),
              controller: passController,
            ),
            ElevatedButton(
                onPressed: () {
                  if(_formKey.currentState!.validate()){
                    String userInput = userController.text;
                    String passInput = passController.text;

                    String user = 'fulano@example.com';
                    String password = '123456';

                    if(user == userInput && password == passInput) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Home();
                          },
                        ),
                      );
                    } else {
                      showDialog(
                          context: context,
                          builder: (context) {
                        return AlertDialog(
                          content: Text('Usuário/Senha incorreto(s)'),
                          actions: <Widget> [
                            TextButton(onPressed: () {Navigator.pop(context);}, child: Text('OK'))
                          ],
                        );
                      });
                      print('Usuário/Senha incorreto(s)');
                    }
                  }
                },
                child: Text('Entrar'))
          ],
        ),
      ),
    );
  }
}
