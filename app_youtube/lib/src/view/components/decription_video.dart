import 'package:app_youtube/src/models/videos.dart';
import 'package:flutter/material.dart';

class DescriptionVideo extends StatelessWidget {
  String title;
  String channelTitle;
  DescriptionVideo({
    this.title,
    this.channelTitle,
  }) : super();

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
              width: 40,
              height: 40,
              color: Colors.red,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),),
                Text(channelTitle),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
