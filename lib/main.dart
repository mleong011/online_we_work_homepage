import 'package:flutter/material.dart';
import 'package:online_we_work_homepage/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter WeWork',
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData(primaryColor: Colors.teal, accentColor: Color(0xFFFEF9EB)),
      home: HomeScreen(),
    );
  }
}
