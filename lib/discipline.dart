import 'package:flutter/material.dart';

class Discipline extends StatefulWidget {
  const Discipline({Key? key}) : super(key: key);

  @override
  State<Discipline> createState() => _DisciplineState();
}

class _DisciplineState extends State<Discipline> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Science'),
        backgroundColor: Color(0xFF8CC0DE),
      ),

      body: buildBody(

      ),
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
              ),
              SizedBox(height: 100,),
              ListTile(    leading: Icon(Icons.book),
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(5),
                ),
                title: Row(
                  children: [
                    Container(
                      child: Padding(
                        padding: EdgeInsets.only(top: 3, bottom: 3,),
                        child: Row(
                          children: [
                            SizedBox(width: 13,),
                            Text('Física', style: TextStyle(
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
                leading: Icon(Icons.book),
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(5),
                ),
                title: Row(
                  children: [
                    Container(
                      child: Padding(
                        padding: EdgeInsets.only(top: 3, bottom: 3,),
                        child: Row(
                          children: [
                            SizedBox(width: 13,),
                            Text('Química', style: TextStyle(
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
                leading: Icon(Icons.book),
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(5),
                ),
                title: Row(
                  children: [
                    Container(
                      child: Padding(
                        padding: EdgeInsets.only(top: 3, bottom: 3,),
                        child: Row(
                          children: [
                            SizedBox(width: 13,),
                            Text('Biologia', style: TextStyle(
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
