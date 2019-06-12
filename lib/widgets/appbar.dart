import 'package:flutter/material.dart';

Widget appBar(BuildContext context) => PreferredSize(
      child: AppBar(
        backgroundColor: Theme.of(context).accentColor,
        elevation: 0.0,
      ),
      preferredSize: Size.fromHeight(0.0),
    );
