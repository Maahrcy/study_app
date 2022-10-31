import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:study_app/database/user_dao.dart';
import 'package:study_app/pages/home_page/home.dart';
import 'package:study_app/pages/register_page/register.dart';
import 'package:study_app/database/shared_pref_helper.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: buildBody(),
      ),
    );
  }

  buildBody() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                  height: 200,
                  width: 200,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/perfil.jpg'),
                  )),
              const SizedBox(height: 35),
              const Align(
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
                controller: passwordController,
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
              ),
              const SizedBox(height: 33),
              ElevatedButton(
                onPressed: onPressed,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('Log In'),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: onPressedRegister,
                  child: const Text('Register an user'))
            ],
          ),
        ),
      ),
    );
  }

  onPressedRegister() async {


    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return const RegisterUser();
    }));
  }

  onPressed() async {
    if (_formKey.currentState!.validate()) {
      String userInput = userController.text;
      String passInput = passwordController.text;

      bool result = await UserDao().aut(user: userInput, password: passInput);

      if (result) {
        SharedPreferences instance = await SharedPreferences.getInstance();
        instance.setString('NAME', userController.text);

        await SharedPrefHelper().login();

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const Home();
            },
          ),
        );
      } else {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: const Text('Usuário/Senha incorreto(s)'),
                actions: <Widget>[
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('OK'))
                ],
              );
            });
      }
    }
  }
}
