import 'package:flutter/material.dart';
import 'package:study_app/pages/discipline_page/discipline.dart';
import 'package:study_app/pages/home_page/home_body.dart';
import 'package:study_app/pages/profile_page/profile.dart';
import 'package:study_app/pages/config_page/config_page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;
  List pages = [
    const HomeBody(),
    const Discipline(),
    const Profile(),
    const ConfigPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            const SizedBox(
              height: 50,
            ),
            const ListTile(
              title: Center(
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://flyclipart.com/profile-icon-png-black-profile-icon-png-196391'),
                ),
              ),
            ),
            ListTile(
              title: const Center(
                child: Text('Fulano de Tal'),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const SizedBox(
              height: 100,
            ),
            ListTile(
              shape: RoundedRectangleBorder(
                side: const BorderSide(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              title: const Center(
                child: Text('Home'),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              shape: RoundedRectangleBorder(
                side: const BorderSide(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              title: const Center(
                child: Text('Material'),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              shape: RoundedRectangleBorder(
                side: const BorderSide(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              title: const Center(
                child: Text('Profile'),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.green,
        selectedItemColor: const Color(0xFF8CC0DE),
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: '',
          ),
        ],
      ),
    );
  }
}
