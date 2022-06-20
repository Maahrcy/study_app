import 'dart:html';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Study App'),
        backgroundColor: Color(0xFF8CC0DE),
      ),
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
              title: Center(
                child: Text('Home'),
              ),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Center(
                child: Text('Material'),
              ),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
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
      body: buildBody(),

    );
  }

  buildBody() {
    return Container(
      child: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text('Bem-vindo, estudante', style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),),
              ),
              SizedBox(height: 100,),
              ListTile(
                title: Row(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          top: BorderSide(width: 1.0, color: Colors.black),
                          left: BorderSide(width: 1.0, color: Colors.black),
                          right: BorderSide(width: 1.0, color: Colors.black),
                          bottom: BorderSide(width: 1.0, color: Colors.black),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top: 3, bottom: 3,),
                        child: Row(
                          children: [
                            Icon(Icons.book),
                            SizedBox(width: 10,),
                            Text('Linguagens', style: TextStyle(
                              fontSize: 20,
                            ),),
                            SizedBox(width: 140,),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                title: Row(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          top: BorderSide(width: 1.0, color: Colors.black),
                          left: BorderSide(width: 1.0, color: Colors.black),
                          right: BorderSide(width: 1.0, color: Colors.black),
                          bottom: BorderSide(width: 1.0, color: Colors.black),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top: 3, bottom: 3,),
                        child: Row(
                          children: [
                            Icon(Icons.book),
                            SizedBox(width: 10,),
                            Text('Humanas', style: TextStyle(
                              fontSize: 20,
                            ),),
                            SizedBox(width: 155,),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                title: Row(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          top: BorderSide(width: 1.0, color: Colors.black),
                          left: BorderSide(width: 1.0, color: Colors.black),
                          right: BorderSide(width: 1.0, color: Colors.black),
                          bottom: BorderSide(width: 1.0, color: Colors.black),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top: 3, bottom: 3,),
                        child: Row(
                          children: [
                            Icon(Icons.book),
                            SizedBox(width: 10,),
                            Text('Exatas', style: TextStyle(
                              fontSize: 20,
                            ),),
                            SizedBox(width: 180,),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                title: Row(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          top: BorderSide(width: 1.0, color: Colors.black),
                          left: BorderSide(width: 1.0, color: Colors.black),
                          right: BorderSide(width: 1.0, color: Colors.black),
                          bottom: BorderSide(width: 1.0, color: Colors.black),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top: 3, bottom: 3,),
                        child: Row(
                          children: [
                            Icon(Icons.book),
                            SizedBox(width: 10,),
                            Text('Ciẽncias da Natureza', style: TextStyle(
                              fontSize: 20,
                            ),),
                            SizedBox(width: 50,),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

}