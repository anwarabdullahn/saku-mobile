import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:saku_mobile/widgets/Input.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginPage();
  }
}

class _LoginPage extends State<LoginPage> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.white70,
      child: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2.5,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFFD985D1),
                    Color(0xFF5F2FD1),
                  ],
                ),
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(90))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Spacer(),
                Align(
                  alignment: Alignment.center,
                  child:
                      Icon(Icons.access_time, color: Colors.white, size: 100),
                ),
                Spacer(),
                Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 32, bottom: 25),
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                    ))
              ],
            ),
          ),
          Expanded(
              child: ListView(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 20),
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
                    inputType: TextInputType.emailAddress,
                    isPassword: true),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: FlatButton(
                  child: Text('Forgot Password ?',
                      style: TextStyle(color: Colors.grey)),
                  onPressed: () {},
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                decoration: BoxDecoration(
                  boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 5)],
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0xFFD985D1),
                      Color(0xFF5F2FD1),
                    ],
                  ),
                ),
                child: Center(
                  child: FlatButton(
                    onPressed: () {},
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              )
            ],
          ))
        ],
      ),
    ));
  }
}
