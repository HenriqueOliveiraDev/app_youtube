import 'package:app_youtube/src/controller/home_bloc.dart';
import 'package:app_youtube/src/service/searchYoutube.dart';
import 'package:app_youtube/src/view/components/item_list.dart';
import 'package:app_youtube/src/view/components/search.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  HomeBloc controller = HomeBloc();
  SearchYoutube search = SearchYoutube();

  @override
  void initState() {
    load();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(icon: Icon(Icons.search), onPressed: (){
          showSearch(context: context, delegate: Search());
        })
      ],
          title: Text(
        'App Tube',
      )),
      body: StreamBuilder(
          stream: controller.streamOutput,
          initialData: [],
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if(snapshot.hasError){
              print('erro');
            }
            print('AQUUUIII');
            print(snapshot.data);
            return ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext ctx, int item) {
                  return ItemList(video: snapshot.data[item],);
                });
          }),
    );
  }

  load() async {
    controller.addListVideo(await search.search('Capimzera', 'video'));
  }
}
