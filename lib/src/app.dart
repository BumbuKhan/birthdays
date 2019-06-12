import 'package:flutter/material.dart';

import 'screens/birthdays_list.dart';

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Birthdays',
      home: BirthdaysList(),
    );
  }
}
