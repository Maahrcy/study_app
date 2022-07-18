import 'dart:html';
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:study_app/discipline.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
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
            SizedBox(
              height: 50,
            ),
            ListTile(
              title: Center(
                child: CircleAvatar(
                  backgroundImage: NetworkImage(''),
                ),
              ),
            ),
            ListTile(
              title: Center(
                child: Text('Fulano de Tal'),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(
              height: 100,
            ),
            ListTile(
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              title: Center(
                child: Text('Home'),
              ),
              onTap: () {
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
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              title: Center(
                child: Text('Profile'),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: buildBody(context),
    );
  }

  buildBody(context) {
    return Container(
      child: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Bem-vindo, estudante',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Discipline();
                  }));
                },
                child: ListTile(
                  tileColor: Color(0xFFFFD9C0),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  leading: Icon(Icons.book),
                  title: Row(
                    children: [
                      Container(
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: 3,
                            bottom: 3,
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Linguagens',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ListTile(
                tileColor: Color(0xFFFFD9C0),
                leading: Icon(Icons.book),
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(5),
                ),
                title: Row(
                  children: [
                    Container(
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 3,
                          bottom: 3,
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Humanas',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                tileColor: Color(0xFFFFD9C0),
                leading: Icon(Icons.book),
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(5),
                ),
                title: Row(
                  children: [
                    Container(
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 3,
                          bottom: 3,
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Exatas',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                tileColor: Color(0xFFFFD9C0),
                leading: Icon(Icons.book),
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(5),
                ),
                title: Row(
                  children: [
                    Container(
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 3,
                          bottom: 3,
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Ciẽncias da Natureza',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
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
