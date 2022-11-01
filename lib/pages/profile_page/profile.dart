import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String name = "Usuario";

  Future<void> getUserName() async {
    SharedPreferences instance = await SharedPreferences.getInstance();
    setState(() {
      name = instance.getString('NAME') ?? "Usuario Teste" ;
    });
  }

  @override
  void initState() {
    super.initState();
    getUserName();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.3,
          decoration: const BoxDecoration(color: const Color(0xFF8CC0DE),),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/perfil.jpg'),
                radius: 50,
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
        Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Text(
              name,
              style: const TextStyle(fontSize: 16),
            ),
            Text("Your Grade", style: TextStyle(fontSize: 16))
          ],
        )
      ]),
    );
  }
}

