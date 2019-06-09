import 'package:flutter/material.dart';

class BirthDate extends StatelessWidget {
  final String day;
  final String weekDay;

  BirthDate({ this.day, this.weekDay });

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(this.day, style: TextStyle(color: Colors.cyan, fontSize: 22)),
        Text(this.weekDay, style: TextStyle(color: Colors.grey))
      ],
    );
  }
}
