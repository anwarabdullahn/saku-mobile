import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:saku_mobile/widgets/Input.dart';
import '../widgets/button.dart';

class RegisterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RegisterPage();
  }
}

class _RegisterPage extends State<RegisterPage> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.white12,
      child: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 8,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF7AB1CE),
                    Color(0xFF698DBE),
                  ],
                ),
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(90))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Image.asset('assets/logo.png',
                        height: 60, width: 60, fit: BoxFit.scaleDown)),
                Padding(
                  padding: const EdgeInsets.only(right: 32),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child: ListView(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Input(
                    inputText: 'First Name',
                    inputIcon: Icon(Icons.person, color: Colors.grey),
                    inputType: TextInputType.text),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Input(
                    inputText: 'Last Name',
                    inputIcon: Icon(Icons.person, color: Colors.grey),
                    inputType: TextInputType.text),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Input(
                    inputText: 'Email',
                    inputIcon: Icon(Icons.email, color: Colors.grey),
                    inputType: TextInputType.emailAddress),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Input(
                    inputText: 'Password',
                    inputIcon: Icon(Icons.vpn_key, color: Colors.grey),
                    inputType: TextInputType.text,
                    isPassword: true),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Input(
                    inputText: 'Phone',
                    inputIcon: Icon(Icons.phone, color: Colors.grey),
                    inputType: TextInputType.phone),
              ),
              Button(text: 'Register', isPrimary: true, onPress: () {}),
              Button(
                  text: 'Have an Account?',
                  onPress: () => Navigator.pop(context))
            ],
          ))
        ],
      ),
    ));
  }
}
