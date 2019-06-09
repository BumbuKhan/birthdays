import 'package:flutter/material.dart';

import '../components/components.dart';

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
    return ListView(
      children: <Widget>[
        MonthTitle(month: 'June', birthdaysCount: 5),

        buildListCard('Amely Newton', 21, 'https://i.pravatar.cc/300?u=a042581f4e29026704r', '5', 'Mon'),
        buildListCard('Nicola Tesla', 91, 'https://i.pravatar.cc/300?u=a043581f4e29026704r', '10', 'Wed'),
        buildListCard('Hawley Burdan', 36, 'https://i.pravatar.cc/300?u=a042581f4e29026704c', '12', 'Thu'),
        buildListCard('Misha Amely', 20, 'https://i.pravatar.cc/300?u=a042581f4e29026703c', '19', 'Wed'),
        buildListCard('Abella Jeorge', 27, 'https://i.pravatar.cc/300?u=v042581f4e29026703c', '28', 'Mon'),

        MonthTitle(month: 'July', birthdaysCount: 2),

        buildListCard('Jerry Cola', 20, 'https://i.pravatar.cc/300?u=v042531f4e22026703c', '1', 'Sun'),
        buildListCard('Pispis Bunny', 27, 'https://i.pravatar.cc/300?u=v042511f4e22026703c', '10', 'Wed'),

        MonthTitle(month: 'August', birthdaysCount: 3),
        buildListCard('Cubic Rubic Ray', 27, 'https://i.pravatar.cc/300?u=v042511d4e22026703c', '19', 'Mon'),
        buildListCard('Alex May', 20, 'https://i.pravatar.cc/300?u=v029511d4e22026703c', '12', 'Tue'),
        buildListCard('Nicolay Koster', 30, 'https://i.pravatar.cc/300?u=v029511d4e28026703c', '31', 'Fri'),
      ],
    );
  }

  Widget buildListCard (String fullName, int age, String imgURL, String birthDay, String weekDay) {
    return Card(
      margin: EdgeInsets.only(top: 0, right: 16, bottom: 0, left: 16),
      elevation: 0,
      child: Row(
        children: <Widget>[
          Timeline(color: Colors.red),
          BirthDate(day: birthDay, weekDay: weekDay, color: Colors.green),
          Expanded(
            child: UserInfo(fullName: fullName, age: age, imgUrl: imgURL),
          )
        ],
      ),
    );
  }
}
