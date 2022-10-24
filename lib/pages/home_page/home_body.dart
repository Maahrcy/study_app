import 'package:flutter/material.dart';
import 'package:study_app/pages/discipline_page/discipline.dart';
import 'package:study_app/pages/home_page/vertical_navbar_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:study_app/database/shared_pref_helper.dart';
import 'package:study_app/pages/login_page/login.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAF0D7),

      drawer: const VerticalNavBar(),
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
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Text(
                  'Bem-vindo, estudante!',
                  style: GoogleFonts.sriracha(
                    fontSize: 28,
                    color: const Color(0xffd9807c),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              ListTile(
                leading: const Icon(Icons.menu_book),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Color(0xFFFFD9C0), width: 3),
                  borderRadius: BorderRadius.circular(8),
                ),
                tileColor: const Color(0xFFFFD9C0),
                title: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 3,
                        bottom: 3,
                      ),
                      child: Row(
                        children: const [
                          SizedBox(
                            width: 13,
                          ),
                          Text(
                            'Linguagens',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 140,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 13),
              ListTile(
                leading: const Icon(Icons.menu_book),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Color(0xFFFFD9C0), width: 3),
                  borderRadius: BorderRadius.circular(8),
                ),
                tileColor: const Color(0xFFFFD9C0),
                title: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 3,
                        bottom: 3,
                      ),
                      child: Row(
                        children: const [
                          SizedBox(
                            width: 13,
                          ),
                          Text(
                            'Humanas',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 140,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 13),
              ListTile(
                leading: const Icon(Icons.menu_book),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Color(0xFFFFD9C0), width: 3),
                  borderRadius: BorderRadius.circular(8),
                ),
                tileColor: const Color(0xFFFFD9C0),
                title: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 3,
                        bottom: 3,
                      ),
                      child: Row(
                        children: const [
                          SizedBox(
                            width: 13,
                          ),
                          Text(
                            'Exatas',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 140,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 13),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Discipline();
                  }));
                },
                child: ListTile(
                  leading: const Icon(Icons.menu_book),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Color(0xFFFFD9C0), width: 3),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  tileColor: const Color(0xFFFFD9C0),
                  title: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 3,
                          bottom: 3,
                        ),
                        child: Row(
                          children: const [
                            SizedBox(
                              width: 13,
                            ),
                            Text(
                              'Natureza',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 140,
                            ),
                          ],
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
