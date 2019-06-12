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
    final currentYear = DateTime.now().year;
    final widgets = <Widget> [];

    prettifiedBirthDays.forEach((month, birthdaysByDays){
      widgets.add(MonthTitle(month: month, birthdaysCount: 5));

      birthdaysByDays.forEach((day, birthDays){
        birthDays.forEach((birthDay){
          final fullName = '${birthDay['firstName']} ${birthDay['lastName']}';
          final avatar = birthDay['avatar'];

          final date = birthDay['date'];
          final day = getDay(date);
          final month = getMonth(date);
          final birthYear = getYear(date);
          final age = currentYear - birthYear;
          final weekDay = weekDays['${DateTime(currentYear, month, day).weekday}'];

          widgets.add(buildListCard(fullName, age, avatar, day, weekDay));
        });
      });
    });

    return ListView(
      children: <Widget>[ ...widgets ],
    );
  }

  Widget buildListCard (String fullName, int age, String imgURL, int birthDay, String weekDay) {
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
