import 'package:flutter/material.dart';
import 'package:study_app/pages/home_page/home.dart';

import '../config_page/config_page.dart';

class VerticalNavBar extends StatefulWidget {
  const VerticalNavBar({Key? key}) : super(key: key);

  @override
  State<VerticalNavBar> createState() => _VerticalNavBarState();
}

class _VerticalNavBarState extends State<VerticalNavBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          const SizedBox(
            height: 50,
          ),
          const ListTile(
            title: Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage(''),
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
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const Home();
                  },
                ),
              );
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
          ListTile(
            shape: RoundedRectangleBorder(
              side: const BorderSide(color: Colors.black, width: 1),
              borderRadius: BorderRadius.circular(5),
            ),
            title: const Center(
              child: Text('Configurações'),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const ConfigPage();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
