import 'package:flutter/material.dart';
import 'package:study_app/discipline_page/discipline.dart';
import 'package:study_app/home_page/vertical_navbar_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAF0D7),
      appBar: AppBar(
        title:   Text('Study App', style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold
        ),),
        backgroundColor: Color(0xFF8CC0DE),

      ),
      drawer: VerticalNavBar(),
      body: buildBody(context),
    );
  }

  buildBody(context) {
    return Container(
      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: ListView(
        children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: EdgeInsets.only(left: 12),
            child: Text(
              'Bem-vindo, estudante!',
              style: GoogleFonts.sriracha(
                fontSize: 28,
                color: const Color(0xffd9807c),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 100,
          ),

          ListTile(    leading: const Icon(Icons.menu_book),
            shape: RoundedRectangleBorder(
              side: const BorderSide(color:  Color(0xFFFFD9C0), width: 3),
              borderRadius: BorderRadius.circular(8),
            ),
            tileColor:  Color(0xFFFFD9C0),
            title: Row(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 3, bottom: 3,),
                    child: Row(
                      children: const [
                        SizedBox(width: 13,),
                        Text('Linguagens', style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),),
                        SizedBox(width: 140,),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 13),

          ListTile(    leading: const Icon(Icons.menu_book),
            shape: RoundedRectangleBorder(
              side: const BorderSide(color:  Color(0xFFFFD9C0), width: 3),
              borderRadius: BorderRadius.circular(8),
            ),
            tileColor:  Color(0xFFFFD9C0),
            title: Row(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 3, bottom: 3,),
                    child: Row(
                      children: const [
                        SizedBox(width: 13,),
                        Text('Humanas', style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),),
                        SizedBox(width: 140,),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 13),
          ListTile(    leading: const Icon(Icons.menu_book),
            shape: RoundedRectangleBorder(
              side: const BorderSide(color:  Color(0xFFFFD9C0), width: 3),
              borderRadius: BorderRadius.circular(8),
            ),
            tileColor:  Color(0xFFFFD9C0),
            title: Row(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 3, bottom: 3,),
                    child: Row(
                      children: const [
                        SizedBox(width: 13,),
                        Text('Exatas', style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),),
                        SizedBox(width: 140,),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 13),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Discipline();
              }));
            },

            child:  ListTile(    leading: const Icon(Icons.menu_book),
              shape: RoundedRectangleBorder(
                side: const BorderSide(color:  Color(0xFFFFD9C0), width: 3),
                borderRadius: BorderRadius.circular(8),
              ),
              tileColor:  Color(0xFFFFD9C0),
              title: Row(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 3, bottom: 3,),
                      child: Row(
                        children: const [
                          SizedBox(width: 13,),
                          Text('Natureza', style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          ),),
                          SizedBox(width: 140,),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      )
      ],
    ),
    );
  }
}
