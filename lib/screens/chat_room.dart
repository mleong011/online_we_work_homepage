import 'package:flutter/material.dart';

class ChatRoom extends StatefulWidget {
  ChatRoom({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<ChatRoom> {
  List<String> _messages = ['Example Message', 'Hi', 'No'];

  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        leading: IconButton(
          icon: Icon(
            Icons.keyboard_backspace,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text("Chatroom"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Flexible(
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 10),
                itemCount: _messages.length,
                reverse: true,
                itemBuilder: (BuildContext context, int index) {
//                  Map msg = _messages[index]
                  return Card(
                      child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(_messages[index]),
                  ));
                },
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: BottomAppBar(
                elevation: 10,
                color: Theme.of(context).primaryColor,
                child: Container(
                  constraints: BoxConstraints(
                    maxHeight: 100,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
//                      IconButton(
//                        icon: Icon(
//                          Icons.add,
//                          color: Theme
//                              .of(context)
//                              .accentColor,
//                        ),
//                        onPressed: () {},
//                      ),
                      Flexible(
                        child: TextField(
                          controller: myController,
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Theme.of(context).textTheme.title.color,
                          ),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10.0),
                            border: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            hintText: "Write your message...",
                            hintStyle: TextStyle(
                              fontSize: 15.0,
                              color: Theme.of(context).textTheme.title.color,
                            ),
                          ),
                          maxLines: null,
                        ),
                      ),
                      RaisedButton(
                        onPressed: () {
                          setState(() {
                            _messages.insert(0, myController.text);
                          });
                          myController.clear();
                        },
                      ),

//                      IconButton(
//                        icon: Icon(
//                          Icons.mic,
//                          color: Theme
//                              .of(context)
//                              .accentColor,
//                        ),
//                        onPressed: () {},
//                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//import 'package:flutter/material.dart';
//
//class ChatRoom extends StatelessWidget {
//  final String chatroom;
//  final int num;
//
//  ChatRoom({this.chatroom, this.num});
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      home: Scaffold(
//        appBar: AppBar(
//          title: Text(chatroom),
//        ),
//        body: Column(
////          onPressed: () {
////            Navigator.pop(context);
////          },
////          child: Text('Go back!'),
//            ),
//      ),
//    );
//  }
//}
//
//class chem extends ChatRoom {
//  chem()
//      : super(
//          chatroom: 'Chemistry',
//          num: 5,
//        );
//}
