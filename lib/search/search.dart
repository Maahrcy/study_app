import 'package:flutter/material.dart';

class SearchAppBar extends StatefulWidget {
  @override
  _SearchAppBarState createState() => _SearchAppBarState();
}

class _SearchAppBarState extends State<SearchAppBar> {
  String appTitle = "Study App";

  bool isSearchEnabled = true;

  _switchSearchBarState(){
    setState(() {
      isSearchEnabled = !isSearchEnabled;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
        elevation: 1,
        backgroundColor: const Color(0xFF8CC0DE),
        title: !isSearchEnabled ? Text(appTitle) : const TextField(
          style: TextStyle(
            color: Colors.white,

          ),
          decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(Icons.search, color: Colors.white),
              hintText: "Search...",
              hintStyle: TextStyle(color: Colors.white)
          ),
        ),
        actions: <Widget>[

          IconButton(
            icon: Icon(isSearchEnabled ? Icons.close : Icons.search),
            onPressed: _switchSearchBarState,
          ),

        /*  IconButton(
            onPressed: () {},
            icon: const Icon(Icons.filter_list),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          )
    */
        ]

    );
  }
}