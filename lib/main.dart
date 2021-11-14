import 'package:flutter/material.dart';
import 'package:loginpage/log_in.dart';
import 'package:loginpage/sign_up.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: homepage(),
  ));
}

class homepage extends StatefulWidget {
  homepage({Key? key}) : super(key: key);

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(title: Text("AppBar")),
      body: Container(
        padding: EdgeInsets.all(25),
        color: Colors.white70,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[],
            ),
            SizedBox(
              width: double.infinity,
              height: 36.0,
              child: new RaisedButton(
                color: Colors.black,
                child: new Text(
                  'CREATE ACCOUNT',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      wordSpacing: 7,
                      letterSpacing: 2),
                ),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => signup()));
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.infinity,
              height: 36.0,
              child: new RaisedButton(
                color: Colors.black,
                child: new Text(
                  'SIGN IN',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      wordSpacing: 7,
                      letterSpacing: 2),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => loginpage()));
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
