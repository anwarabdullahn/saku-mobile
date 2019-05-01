import 'package:flutter/material.dart';
import 'package:saku_mobile/pages/RegisterPage.dart';
import './pages/LoginPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (BuildContext context) => LoginPage(),
        '/register': (BuildContext context) => RegisterPage()
      },
    );
  }
}
