import 'dart:convert';
import 'package:app_youtube/src/models/videos.dart';
import 'package:dio/dio.dart';

class SearchYoutube {
  Dio _dio = Dio();
  Response _response = Response();
  Future<List<Video>> search(String input, String type) async {
    _response = await _dio.get(
        'https://www.googleapis.com/youtube/v3/search?part=snippet&type=${type}&q=${input}&key=AIzaSyBl5a_zDJoOKrlq7g2Qc2-RL17AhYwTi3s');
    if (_response.statusCode == 200) {
      List<Video> videos = _response.data['items'].map<Video>((item) {
        return Video.fromJson(item);
      }).toList();
      return videos;
    } else {
      print('error');
    }
  }
}
