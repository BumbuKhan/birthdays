import 'package:flutter/material.dart';

import '../components/timeline.dart';

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
        buildListTitle('June', 5),

        buildListCard('Amely Newton', 21, 'https://i.pravatar.cc/300?u=a042581f4e29026704r'),
        buildListCard('Nicola Tesla', 91, 'https://i.pravatar.cc/300?u=a043581f4e29026704r'),
        buildListCard('Hawley Burdan', 36, 'https://i.pravatar.cc/300?u=a042581f4e29026704c'),
        buildListCard('Misha Amely', 20, 'https://i.pravatar.cc/300?u=a042581f4e29026703c'),
        buildListCard('Abella Jeorge', 27, 'https://i.pravatar.cc/300?u=v042581f4e29026703c'),

        buildListTitle('July', 2),

        buildListCard('Jerry Cola', 20, 'https://i.pravatar.cc/300?u=v042531f4e22026703c'),
        buildListCard('Pispis Bunny', 27, 'https://i.pravatar.cc/300?u=v042511f4e22026703c'),

        buildListTitle('August', 3),
        buildListCard('Cubic Rubic Ray', 27, 'https://i.pravatar.cc/300?u=v042511d4e22026703c'),
        buildListCard('Alex May', 20, 'https://i.pravatar.cc/300?u=v029511d4e22026703c'),
        buildListCard('Nicolay Koster', 30, 'https://i.pravatar.cc/300?u=v029511d4e28026703c'),

      ],
    );
  }

  Widget buildListTitle (String month, int birthdaysCount) {
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

  Widget buildListCard (String name, int age, String imgURL) {
    return Card(
      margin: EdgeInsets.only(top: 0, right: 16, bottom: 0, left: 16),
      elevation: 0,
      child: Row(
        children: <Widget>[
          Timeline(
            color: Colors.red
          ),
          Column(
            children: <Widget>[
              Text('24', style: TextStyle(color: Colors.cyan, fontSize: 22)),
              Text('Mon', style: TextStyle(color: Colors.grey))
            ],
          ),
          Expanded(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(imgURL),
              ),
              title: Text('${name}', style: TextStyle( fontWeight: FontWeight.bold )),
              subtitle: Text('${age} years old'),
            ),
          )
        ],
      ),
    );
  }
}
