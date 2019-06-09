import 'package:flutter/material.dart';

class MonthTitle extends StatelessWidget {
  final String month;
  final int birthdaysCount;

  MonthTitle({ this.month, this.birthdaysCount });

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 32, right: 16, bottom: 16, left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('${month}', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
          Container(height: 4),
          Text('${birthdaysCount} birthday(s)', style: TextStyle(color: Colors.grey))
        ],
      ),
    );
  }
}
