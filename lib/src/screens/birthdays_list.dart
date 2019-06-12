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
          final date = birthDay['date'];

          final day = getDay(date);
          final month = getMonth(date);
          final birthYear = getYear(date);
          final age = currentYear - birthYear;
          final weekDay = weekDays['${DateTime(currentYear, month, day).weekday}'];

          widgets.add(ListCard(
              fullName: '${birthDay['firstName']} ${birthDay['lastName']}',
              age: age,
              imgURL: birthDay['avatar'],
              birthDay: day,
              weekDay: weekDay
          ));
        });
      });
    });

    return ListView(
      children: <Widget>[ ...widgets ],
    );
  }
}
