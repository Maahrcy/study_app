import 'package:flutter/material.dart';
import 'package:study_app/discipline_page/discipline.dart';
import 'package:study_app/home_page/home_body.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;
  List pages = [
    HomeBody(),
    Discipline(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            SizedBox(height: 50,),
            ListTile(
              title: Center(
                child: CircleAvatar(
                  backgroundImage: NetworkImage('https://flyclipart.com/profile-icon-png-black-profile-icon-png-196391'),
                ),
              ),
            ),
            ListTile(
              title: Center(
                child: Text('Fulano de Tal'),
              ),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            SizedBox(height: 100,),
            ListTile(
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              title: Center(
                child: Text('Home'),
              ),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              title: Center(
                child: Text('Material'),
              ),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              title: Center(
                child:Text('Profile'),
              ),
              onTap: (){
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xFF8CC0DE),
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '',),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: '',),
        ],
      ),
    );
  }
}
