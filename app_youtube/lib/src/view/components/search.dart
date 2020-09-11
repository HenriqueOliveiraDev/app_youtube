import 'package:app_youtube/src/controller/home_bloc.dart';
import 'package:app_youtube/src/service/searchYoutube.dart';
import 'package:flutter/material.dart';

class Search extends SearchDelegate {
  HomeBloc controller = new HomeBloc();
  SearchYoutube searchYoutube = new SearchYoutube();

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.of(context).pop();
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    print('result');
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    loadSuggestionsVideo(query);
    return StreamBuilder(
        stream: controller.streamOutput,
        initialData: [],
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext ctx, int item) {
                return Text(snapshot.data[item]['name']);
              });
        });
  }

  Future loadSuggestionsVideo(String query) async {
    return controller.addListVideo(await searchYoutube.search(query, 'video'));
  }
}
