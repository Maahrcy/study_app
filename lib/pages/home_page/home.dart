import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:study_app/database/shared_pref_helper.dart';
import 'package:study_app/pages/discipline_page/discipline.dart';
import 'package:study_app/pages/home_page/home_body.dart';
import 'package:study_app/pages/login_page/login.dart';
import 'package:study_app/pages/profile_page/profile.dart';
import 'package:study_app/pages/config_page/config_page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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

  bool isSearchEnabled = true;
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
      appBar: buildAppBar(),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            const SizedBox(
              height: 50,
            ),
            const ListTile(
              title: Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/perfil.jpg'),
                ),
              ),
            ),
            ListTile(
              title: Center(
                child: Text(name),
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
        unselectedItemColor: const Color(0xFF8CC0DE),
        selectedItemColor: const Color(0xFF8CDECE),
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
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
      ),
    );
  }

  buildAppBar() {
    String appTitle = "Study App";

    return AppBar(
      elevation: 1,
      backgroundColor: const Color(0xFF8CC0DE),
      title: !isSearchEnabled ? Text(appTitle) : const TextField(
        style: TextStyle(
          color: Colors.white,

        ),
        decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(Icons.search, color: Colors.white),
            hintText: "Search...",
            hintStyle: TextStyle(color: Colors.white)
        ),
      ),
      actions: <Widget>[
        IconButton(
            onPressed: (){
              SharedPrefHelper().logout();
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {return const Login();}
              ));
            },  icon: const Icon(
          Icons.logout_outlined,
          color: Colors.white,
        ))
      ],
    );
  }


}
