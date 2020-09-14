import 'dart:async';

import 'package:app_youtube/src/models/videos.dart';

class SearchBloc {
  final StreamController _streamController = StreamController();

  Sink get streamInput => _streamController.sink;
  Stream get streamOutput => _streamController.stream;

  searchNameVideo(String data) {
    streamInput.add(data);
  }
}
