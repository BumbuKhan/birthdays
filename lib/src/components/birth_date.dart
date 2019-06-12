import 'package:flutter/material.dart';

class BirthDate extends StatelessWidget {
  final int day;
  final Color color;
  final String weekDay;

  BirthDate({ this.day, this.weekDay, this.color });

  Widget build(BuildContext context) {
    return Container(
      width: 30,
      child: Column(
        children: <Widget>[
          Text('${this.day}', style: TextStyle(color: this.color, fontSize: 22)),
          Text(this.weekDay, style: TextStyle(color: Colors.grey))
        ],
      ),
    );
  }
}
