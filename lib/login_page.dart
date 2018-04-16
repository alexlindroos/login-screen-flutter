import 'package:flutter/material.dart';
import 'package:login_screen/background_painter.dart';


class LoginPage extends StatefulWidget {

  @override
  _LoginPageState createState() => new _LoginPageState();

}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.black87,
      body: new Stack(
        alignment: Alignment.lerp(
            Alignment.lerp(Alignment.centerRight, Alignment.center, 0.3),
            Alignment.topCenter,
            0.15),
        children: <Widget>[
          new CustomPaint(
              painter: BackgroundPainter(),
              child: new Container(height: 700.0)
          ),
          new Column(
            children: <Widget>[
              new Center(
                child: new Padding(
                    padding: const EdgeInsets.symmetric(vertical: 40.0),
                    child:new FlutterLogo(size: 180.0),
                ),
              ),
              new Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50.0),
                    child: _returnLoginField(Icons.person, false),
              ),
              new Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50.0),
                    child: _returnPasswordField(Icons.vpn_key, true),
              ),
              new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Padding(
                    padding: const EdgeInsets.only(top: 40.0, bottom: 10.0),
                    child: _returnLoginButton(),
                  ),
                  new Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: _returnForgotPassword(),
                  ),
                  new Column(
                    children: <Widget>[
                      new Padding(
                        padding: const EdgeInsets.only(top: 130.0),
                        child: _returnPrivacyText(),
                      ),
                    ],
                  )
                ],
              ),
                ],
              )
        ],
      ),
    );
  }
}

_returnLoginField(IconData icon, bool isObscure) {
  return new TextField(
    obscureText: isObscure,
    style: new TextStyle(fontSize: 15.0),
    decoration: new InputDecoration(

      icon: new Icon(
          icon,
          color: Colors.deepPurpleAccent
      ),
    ),
  );
}

_returnPasswordField(IconData icon, bool isObscure) {
  return new TextField(
        obscureText: isObscure,
        style: new TextStyle(fontSize: 15.0),
        decoration: new InputDecoration(
          icon: new Icon(
              icon,
              color: Colors.deepPurpleAccent
          ),
        ),
  );
}

_returnLoginButton() {
  return new FlatButton(
            onPressed: () {} ,
            child: new Text(
              "LOGIN",
             style: const TextStyle(
                fontFamily: 'Ostrich',
                color: Colors.deepPurpleAccent,
                fontSize: 20.0,
              ),
            ),
  );
}

_returnForgotPassword() {
  return new FlatButton(
    onPressed: () {} ,
    child: new Text(
      "FORGOT PASSWORD?",
      style: const TextStyle(
        fontFamily: 'Ostrich',
        color: Colors.grey,
        fontSize: 10.0,
      ),
    ),
  );
}

_returnPrivacyText() {
  return new FlatButton(
    onPressed: () {} ,
    child: new Column(
      children: <Widget>[
        new Text(
          "By logging in you agree to our",
          style: const TextStyle(
            fontFamily: 'Ostrich',
            color: Colors.white,
            fontSize: 11.0,
          ),
        ),
        new Text(
          "privacy policy & terms of service",
          style: const TextStyle(
            fontFamily: 'Ostrich',
            color: Colors.white,
            fontSize: 11.0,
          ),
        ),
      ],
    ),
  );
}