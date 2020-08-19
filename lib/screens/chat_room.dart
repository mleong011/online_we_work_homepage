import 'package:flutter/material.dart';

class ChatRoom extends StatelessWidget {
  final String chatroom;
  final int num;

  ChatRoom({this.chatroom, this.num});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(chatroom),
        ),
        body: Column(
//          onPressed: () {
//            Navigator.pop(context);
//          },
//          child: Text('Go back!'),
            ),
      ),
    );
  }
}

class chem extends ChatRoom {
  chem()
      : super(
          chatroom: 'Chemistry',
          num: 5,
        );
}
