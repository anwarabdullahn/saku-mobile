import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final Icon inputIcon;
  final String inputText;
  final TextInputType inputType;
  final bool isPassword;

  Input(
      {this.inputText,
      this.inputIcon,
      this.inputType = TextInputType.text,
      this.isPassword = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(16, 4, 16, 4),
            height: 50,
            width: MediaQuery.of(context).size.width / 1.1,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 5)],
                borderRadius: BorderRadius.all(Radius.circular(50))),
            child: TextField(
              obscureText: isPassword,
              keyboardType: inputType,
              autofocus: false,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: inputText,
                  icon: inputIcon),
            ),
          )
        ],
      ),
    );
  }
}
