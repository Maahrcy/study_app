import 'dart:io';
import 'package:flutter/material.dart';
import '../database/shared_pref_helper.dart';
import 'package:study_app/pages/home_page/home.dart';
import 'package:study_app/pages/login_page/login.dart';

import 'home_page/home.dart';
import 'login_page/login.dart';

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
    bool login = await SharedPrefHelper().getUser();
    await Future.delayed(const Duration(seconds: 5));
    if (login == true) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return const Home();
          },
        ),
      );
    }
    else {
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
        child: Image.asset('assets/images/books.jpg'),
      ),
    );
  }
}
