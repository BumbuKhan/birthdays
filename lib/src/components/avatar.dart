import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String imgUrl;

  Avatar({ this.imgUrl });

  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
              color: Colors.grey[200],
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: NetworkImage(this.imgUrl),
                  fit: BoxFit.fill
              )
          ),
        )
      ],
    );
  }
}
