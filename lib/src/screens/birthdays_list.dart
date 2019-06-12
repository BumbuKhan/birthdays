import 'package:birthdays/src/utils/prettify_data.dart';
import 'package:flutter/material.dart';

import '../components/components.dart';
import '../mockData/data.dart';

class BirthdaysList extends StatelessWidget {
  Widget build(BuildContext build) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Birthdays'),
      ),
      body: buildList(),
      backgroundColor: Colors.white,
    );
  }

  Widget buildList() {
    final prettifiedBirthDays = prettifyData(birthdays);
    final widgets = <Widget> [];

    prettifiedBirthDays.forEach((month, birthdaysByDays){
      widgets.add(MonthTitle(month: month, birthdaysCount: 5));

      birthdaysByDays.forEach((day, birthDays){
        birthDays.forEach((birthDay){
          final fullName = '${birthDay['firstName']} ${birthDay['lastName']}';
          final avatar = birthDay['avatar'];

          widgets.add(buildListCard(fullName, 21, avatar, '5', 'Mon'));
        });
      });
    });

    return ListView(
      children: <Widget>[ ...widgets ],
    );
  }

  Widget buildListCard (String fullName, int age, String imgURL, String birthDay, String weekDay) {
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
