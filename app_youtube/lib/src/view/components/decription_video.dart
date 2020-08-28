import 'package:flutter/material.dart';

class DescriptionVideo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(
              Radius.circular(100),
            ),
            child: Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
          ),
          Column(
            children: [
              Text('title'),
              Text('channel name'),
            ],
          )
        ],
      ),
    );
  }
}
