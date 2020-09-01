import 'package:app_youtube/src/models/videos.dart';
import 'package:app_youtube/src/view/components/decription_video.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemList extends StatelessWidget {
  Video video;
  ItemList({this.video}) : super();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: Column(
        children: [
          Container(
            height: 250,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(video.thumb),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: DescriptionVideo(
              title: video.name,
              channelTitle: video.channelName,
            ),
          )
        ],
      ),
    );
  }
}
