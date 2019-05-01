import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:saku_mobile/bloc/login.dart';
import 'package:saku_mobile/widgets/Input.dart';
import '../widgets/button.dart';

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
    void onSubmit(BuildContext context) =>
        Navigator.pushReplacementNamed(context, '/home');

    return Scaffold(
        body: Container(
      color: Colors.white12,
      child: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2.5,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFF7AB1CE), Color(0xFF4B5F6B)],
                ),
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(90))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Spacer(flex: 1),
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/logo.png',
                    height: 200,
                    width: 200,
                    fit: BoxFit.scaleDown,
                  ),
                ),
                Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 32, bottom: 20),
                      child: Text(
                        'Sign In',
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
                    onChange: (e) => loginBloc.emailChange.add(e),
                    inputText: 'Email',
                    inputIcon: Icon(Icons.email, color: Colors.grey),
                    inputType: TextInputType.emailAddress,
                    stream: loginBloc.emailTxt),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Input(
                    onChange: (e) => loginBloc.passwordChange.add(e),
                    inputText: 'Password',
                    inputIcon: Icon(Icons.vpn_key, color: Colors.grey),
                    inputType: TextInputType.emailAddress,
                    isPassword: true,
                    stream: loginBloc.passwordTxt),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: FlatButton(
                  child: Text('Forgot Password ?',
                      style: TextStyle(color: Colors.grey)),
                  onPressed: () {},
                ),
              ),
              StreamBuilder<bool>(
                  stream: loginBloc.submitBtn,
                  builder: (context, snapshot) {
                    return Button(
                        text: 'Login',
                        isPrimary: true,
                        onPress: () =>
                            snapshot.hasData ? onSubmit(context) : null);
                  }),
              Button(
                  text: 'Dont Have an Account?',
                  onPress: () => Navigator.pushNamed(context, '/register'))
            ],
          ))
        ],
      ),
    ));
  }
}
