import 'package:flutter/material.dart';

class loginpage extends StatefulWidget {
  loginpage({Key? key}) : super(key: key);

  @override
  _loginpageState createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  @override
  Widget build(BuildContext context) {
    bool _have8char = false;
    bool _haveonenumber = false;
    var _password = "";
    RegExp numericRegex = RegExp(r'[0-9]');
    _onpasswordChange() {
      setState(() {
        if (_password.length >= 8)
          _have8char = true;
        else
          _have8char = false;
        if (numericRegex.hasMatch(_password))
          _haveonenumber = true;
        else
          _haveonenumber = false;
      });
    }

    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 25.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(padding: EdgeInsets.only(left: 1)),
                        IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: Icon(Icons.navigate_before),
                        ),
                        SizedBox(
                          width: 115,
                        ),
                        Text(
                          "LOGIN",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.all(10)),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Your E-mail",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.mail),
                          border: OutlineInputBorder()),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text("Password",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                        "Please Create a secure password including the following createria below",
                        style: TextStyle(color: Colors.black26, fontSize: 13)),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      onChanged: (String msg) {
                        setState(() {
                          _password = msg;
                          _onpasswordChange();
                        });
                      },
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.remove_red_eye),
                          border: OutlineInputBorder()),
                      keyboardType: TextInputType.visiblePassword,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 36.0,
                      child: new RaisedButton(
                        color: Colors.black,
                        child: new Text(
                          'LOGIN',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                              wordSpacing: 7,
                              letterSpacing: 2),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            )));
  }
}
