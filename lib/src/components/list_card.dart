import 'package:flutter/material.dart';

import 'components.dart';

class ListCard extends StatelessWidget {
  final int index;
  final String fullName;
  final int age;
  final String imgURL;
  final int birthDay;
  final String weekDay;

  ListCard({ this.index, this.fullName, this.age, this.imgURL, this.birthDay, this.weekDay });

  Widget build(BuildContext build) {
    return Card(
      margin: EdgeInsets.only(top: 0, right: 16, bottom: 0, left: 16),
      elevation: 0,
      child: Row(
        children: <Widget>[
          Timeline(color: Colors.grey[400]),
          BirthDate(day: birthDay, weekDay: weekDay, color: Colors.green),
          Expanded(
            child: UserInfo(fullName: fullName, age: age, imgUrl: imgURL),
          )
        ],
      ),
    );
  }
}
