import 'package:flutter/foundation.dart';

class Video {
  String id;
  String name;
  String description;
  String dataPublish;
  String thumb;
  String channelId;
  String channelName;

  Video(
      {this.id,
      this.name,
      this.description,
      this.dataPublish,
      this.thumb,
      this.channelId,
      this.channelName});

  Video.fromJson(Map<String, dynamic> json) {
    id = json['id']['videoId'];
    name = json['snippet']['title'];
    description = json['snippet']['description'];
    dataPublish = json['snippet']['publishTime'];
    thumb = json['snippet']['thumbnails']['high']['url'];
    channelId = json['snippet']['channelId'];
    channelName = json['snippet']['channelTitle'];
  }
}
