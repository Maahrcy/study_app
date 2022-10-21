import 'package:flutter/material.dart';
import 'package:study_app/database/user_dao.dart';
import 'package:study_app/pages/home_page/home.dart';
import 'package:study_app/pages/register_page/register.dart';

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
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(40),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
                height: 200,
                width: 200,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/perfil.jpg'),
                )),
            const SizedBox(height: 35),
            Align(
                alignment: Alignment.topCenter,
                child: Text("WELCOME!",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(fontSize: 25))),
            const SizedBox(height: 28),
            const SizedBox(height: 28),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Campo de e-mail obrigatório';
                }
                return null;
              },
              controller: userController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: 'User'),
            ),
            const SizedBox(height: 16),
            TextFormField(
              obscureText: true,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Campo de senha obrigatório';
                } else if (value.length < 6) {
                  return 'Senha deve possuir no mínimo 6 digitos';
                }

                return null;
              },
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Password'),
              controller: passController,
            ),
            const SizedBox(height: 33),
            ElevatedButton(
              onPressed: () async {
                if (_formKey.currentState!.validate()) {
                  String userInput = userController.text;
                  String passInput = passController.text;

                  bool result = await userDao().aut(user: userInput, password: passInput);

                  if (result) {
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
                            actions: <Widget>[
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text('OK'))
                            ],
                          );
                        });
                    print('Usuário/Senha incorreto(s)');
                  }
                }
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Log In'),
                ],
              ),
            ),
            SizedBox(height: 33,),
            ElevatedButton(
                onPressed: onPressedRegister(),
                child: Text('Register an user'))
          ],
        ),
      ),
    );
  }

  onPressedRegister() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return const RegisterUser();
    }));
  }
}
