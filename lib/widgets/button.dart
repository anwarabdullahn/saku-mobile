import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final bool isPrimary;
  final Function onPress;

  Button({this.text, this.isPrimary = false, @required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
      decoration: BoxDecoration(
        boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 5)],
        borderRadius: BorderRadius.all(Radius.circular(40)),
        gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: isPrimary
                ? [Color(0xFF7AB1CE), Color(0xFF698DBE)]
                : [Color(0xFF585A60), Color(0xFF585A60)]),
      ),
      child: Center(
        child: FlatButton(
          onPressed: onPress,
          child: Text(
            text,
            style: TextStyle(
                color: !isPrimary ? Colors.white54 : Colors.white,
                fontSize: 18),
          ),
        ),
      ),
    );
  }
}
