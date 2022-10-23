import 'package:flutter/material.dart';
import 'package:study_app/pages/resume_page/quimica.dart';

class Discipline extends StatefulWidget {
  const Discipline({Key? key}) : super(key: key);

  @override
  State<Discipline> createState() => _DisciplineState();
}

class _DisciplineState extends State<Discipline> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAF0D7),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: const [
                Text('Natureza'),
              ],
            ),
            const Icon(Icons.search)
          ],
        ),
        backgroundColor: const Color(0xFF8CC0DE),
      ),
      body: buildBody(),
    );
  }

  buildBody() {
    return ListView(
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
              const SizedBox(
                height: 68,
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
                            'Física',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
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
                    return const Quimica();
                  }));
                },
                child: ListTile(
                  leading: const Icon(Icons.menu_book),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Color(0xFFFFD9C0), width: 3),
                    borderRadius: BorderRadius.circular(5),
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
                              'Química',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 13),
              ListTile(
                leading: const Icon(Icons.menu_book),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Color(0xFFFFD9C0), width: 3),
                  borderRadius: BorderRadius.circular(5),
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
                            'Biologia',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
