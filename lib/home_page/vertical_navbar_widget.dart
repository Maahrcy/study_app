import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
              ListTile(
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(5),
                ),
                title: Center(
                  child:Text('Configurações'),
                ),
                onTap: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context){
                      return ConfigPage();
                    },),);
                },
              ),
            ],
          ),
    );
  }
}
