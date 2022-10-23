import 'package:flutter/material.dart';
import 'package:study_app/domain/user.dart';
import 'package:study_app/database/user_dao.dart';

class RegisterUser extends StatefulWidget {
  const RegisterUser({Key? key}) : super(key: key);
  @override
  State<RegisterUser> createState() => _RegisterUserState();
}

class _RegisterUserState extends State<RegisterUser> {
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
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(40),
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
                child: Text("REGISTER USER",
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
              controller: passController,
              obscureText: true,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Campo senha obrigatório';
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
              onPressed: () async {
                if (_formKey.currentState!.validate()) {
                  String userInput = userController.text;
                  String passInput = passController.text;

                  User createdUser =
                      User(username: userInput, password: passInput);
                  await UserDao().saveUser(user: createdUser);
                  const SnackBar(
                    content: Text('Usuário registrado'),
                  );
                  Navigator.pop(context);
                } else {
                  const SnackBar(
                    content: Text('Algo deu errado'),
                  );
                }
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Register'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  onPressedRegister() {}
}
