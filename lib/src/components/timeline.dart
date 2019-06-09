import 'package:flutter/material.dart';

class Timeline extends StatelessWidget {
  final Color color;
  final bool isFirst;
  final bool isLats;

  Timeline({ this.color, this.isFirst = false, this.isLats = false });

  Widget build(BuildContext context) {
    final children = <Widget>[];

    if (!this.isFirst) {
      children.add(
          Container(
            width: 1,
            height: 30,
            decoration: BoxDecoration(
                color: Colors.grey[300]
            ),
          )
      );
    }

    children.add(
        Container(
          margin: EdgeInsets.only(top: 5, bottom: 5),
          width: 8,
          height: 8,
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.all(Radius.circular(5))
          ),
        )
    );

    if (!this.isLats) {
      children.add(
          Container(
            width: 1,
            height: 30,
            decoration: BoxDecoration(
                color: Colors.grey[300]
            ),
          )
      );
    }

    return Container(
      margin: EdgeInsets.only(right: 16),
      child: Column(
        children: children,
      ),
    );
  }
}
