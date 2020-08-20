import 'package:flutter/material.dart';
import 'package:online_we_work_homepage/widgets/info_card.dart'
    show Home, MyApp, email, main, phone;
import 'package:url_launcher/url_launcher.dart' as launcher;

const email = 'name@example.com';
const phone = '+1 800 900 7000';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  void _showDialog(BuildContext context, {String title, String msg}) {
    final dialog = AlertDialog(
      title: Text(title),
      content: Text(msg),
      actions: <Widget>[
        RaisedButton(
          color: Colors.teal,
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            'Close',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
    showDialog(context: context, builder: (x) => dialog);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[300],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('images/profile1.jpg'),
            ),
            Text('Name',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                )),
            Text('Description (Student)',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(
                height: 20,
                width: 200,
                child: Divider(
                  color: Colors.teal[800],
                )),
            InfoCard(
              text: phone,
              icon: Icons.phone,
              onPressed: () async {
                String editPhoneNum =
                    phone.replaceAll(new RegExp(r"\s+\b|\b\s"), "");
                final phoneNum = 'tel:$editPhoneNum';

                if (await launcher.canLaunch(phoneNum)) {
                  await launcher.launch(phoneNum);
                } else {
                  _showDialog(
                    context,
                    title: 'Sorry',
                    msg: 'Email can not be send. Please try again!',
                  );
                }
              },
            ),
            InfoCard(
              text: email,
              icon: Icons.email,
              onPressed: () async {
                final emailAddress = 'mailto:$email';

                if (await launcher.canLaunch(emailAddress)) {
                  await launcher.launch(emailAddress);
                } else {
                  _showDialog(
                    context,
                    title: 'Sorry',
                    msg: 'URL can not be opened. Please try again!',
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
