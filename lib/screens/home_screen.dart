import 'package:flutter/material.dart';
import 'package:online_we_work_homepage/widgets/Recent_Rooms.dart';
import 'package:online_we_work_homepage/widgets/category_selector.dart';
import 'package:online_we_work_homepage/widgets/recent_chats.dart';

class HomeScreen extends StatefulWidget {
  @override
  _RecentChatsState createState() => _RecentChatsState();
}

class _RecentChatsState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      //scaffold layout
      backgroundColor: Theme.of(context).primaryColor,
      //beginning of appbar
      appBar: AppBar(
        //top bar
        leading: IconButton(
          icon: Icon(Icons.menu),
          iconSize: 30.0,
          color: Colors.white,
          onPressed: () {},
        ),
        title: Text(
          'Study Buddies',
          style: TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search), iconSize: 30.0, onPressed: () {}),
        ],
      ),
      //menu row: Recent, Browse, Profile, Requests
      body: Column(
        children: <Widget>[
          CategorySelector(),
          Expanded(
            child: Container(
              height: 500.0,
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              //end of menu row

              //recent rooms row
              child: Column(
                children: <Widget>[
                  RecentRooms(),
                  RecentChats(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
