import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            /*TextButton(onPressed: (){},
                child: const Icon(Icons.arrow_back,
                    color: Colors.white
                )
            ),*/
            Row(
              children: const [
                Icon(Icons.menu_book),
                Text('Natureza'),
              ],

            ),
            const Icon(Icons.search)
          ],
        ),
        backgroundColor: const Color(0xFF8CC0DE),

      ),

      body: buildBody(

      ),
    );
  }

  buildBody() {
    return Container(
      child: ListView(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.all(50),
                ),
                const SizedBox(height: 68,),

                ListTile(
                  leading: const Icon(Icons.menu_book),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  title: Row(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 3, bottom: 3,),
                          child: Row(
                            children: const [
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
                  leading: const Icon(Icons.menu_book),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  title: Row(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 3, bottom: 3,),
                          child: Row(
                            children: const [
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
                  leading: const Icon(Icons.menu_book),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  title: Row(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 3, bottom: 3,),
                          child: Row(
                            children: const [
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
            ),
          )
        ],
      ),
    );
  }
}
