import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final Icon inputIcon;
  final String inputText;
  final TextInputType inputType;
  final bool isPassword;
  final Function onChange;

  Input(
      {@required this.inputText,
      @required this.inputIcon,
      this.inputType = TextInputType.text,
      this.isPassword = false,
      this.onChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(16, 4, 16, 4),
            height: 47,
            width: MediaQuery.of(context).size.width / 1.1,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 5)],
                borderRadius: BorderRadius.all(Radius.circular(50))),
            child: TextField(
              onChanged: onChange,
              style: TextStyle(fontSize: 14),
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
