import 'package:flutter/material.dart';

import 'View/Button.dart';
import 'View/Textform.dart';
import 'myhome.dart';

class LoginSignUpPage extends StatefulWidget {
  @override
  _LoginSignUpPageState createState() => new _LoginSignUpPageState();
}

class _LoginSignUpPageState extends State<LoginSignUpPage> {
  final formkey = new GlobalKey<FormState>();
  String _email;
  String _password;
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final judul = Text(
      'Masuk',
      style: TextStyle(
          color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
    );
    final forgotLabel = FlatButton(
        child: Text(
          'create account?',
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => MyHomePage())));
    return new Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(children: <Widget>[
        Center(
          child: new Image.asset(
            'images/mobil.jpg',
            width: size.width,
            height: size.height,
            fit: BoxFit.cover,
          ),
        ),
        //Image.network('situs')
        Center(
          child: Form(
            key: formkey,
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 150.0,
                    child: Image.asset(
                      "images/Logo.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(height: 25.0),
                  judul,
                  SizedBox(height: 15.0),
                  textform(
                    iconData: Icon(Icons.email, color: Colors.white),
                    obs: false,
                    filed: true,
                    warna: Colors.white,
                    style: style,
                    text: 'Email tidak boleh kosong',
                    hint: 'email',
                    valueHasil: (value) => _email = value,
                  ),
                  SizedBox(height: 15.0),
                  textform(
                    obs: true,
                    iconData: Icon(Icons.email, color: Colors.white),
                    filed: true,
                    warna: Colors.white,
                    style: style,
                    text: 'password tidak boleh kosong',
                    hint: 'Password',
                    valueHasil: (value) => _password = value,
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  button(
                    style: style,
                    warna: Color(0xFFB71C1C),
                    text: 'login',
                    select: () {},
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  forgotLabel,
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }

  List<Widget> buildInput() {
    return [];
  }
}
