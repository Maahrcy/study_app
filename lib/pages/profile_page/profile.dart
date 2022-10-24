import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  Future<String> getUserName() async {
    SharedPreferences instance = await SharedPreferences.getInstance();
    String name = instance.getString('NAME')! ?? "Erro" ;
    return name;
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
              getUserName().toString(),
              style: const TextStyle(fontSize: 16),
            ),
            Text("Your Grade", style: TextStyle(fontSize: 16))
          ],
        )
      ]),
    );
  }
}

