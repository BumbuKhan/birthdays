import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  final String fullName;
  final int age;
  final String imgUrl;

  UserInfo({ this.fullName, this.age, this.imgUrl });

  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(this.imgUrl),
      ),
      title: Text('${this.fullName}', style: TextStyle( fontWeight: FontWeight.bold )),
      subtitle: Text('${this.age} years old'),
    );
  }
}
