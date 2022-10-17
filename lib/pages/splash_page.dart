
import 'package:flutter/material.dart';

import '../data/shared_pref_helper.dart';
import '../home_page/home.dart';
import '../login_page/login.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<void> loadData() async {
    bool isLogged = await SharedPrefHelper().getUser();
    await Future.delayed(const Duration(seconds: 5));
    if(isLogged == true){
      // Se logado, chamar HomePage
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return const Home();
          },
        ),
      );
    } else {
      // Chamar página de Login
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return const Login();
          },
        ),
      );
    }


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF10397B),
      body: Center(
        child: Image.network(
            'https://upload.wikimedia.org/wikipedia/commons/9/99/Logo-hurb-branca-bg-azul.jpg'),
      ),
    );
  }
}
