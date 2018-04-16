import 'package:flutter/material.dart';
import 'package:login_screen/login_page.dart';

void main() => runApp(new LoginScreenApp());

class LoginScreenApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new LoginPage(),
      theme: new ThemeData(
        primarySwatch: Colors.deepPurple,
        accentColor: Colors.indigoAccent
      ),
    );
  }
}
