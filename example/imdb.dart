import 'package:flutter/material.dart';
import 'package:imdb/imdb.dart';
import 'package:imdb/model/serie.dart';


class MyPage extends StatelessWidget {
  final imdb = IMDB("your key");

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Serie>>(
      future: imdb.getTop10Series(),
      builder: (context, snapshot) {
        return snapshot.hasData
            ? ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(6.0),
                itemCount: snapshot.data.length,
                itemBuilder: (_, int position) {
                  final serie = snapshot.data[position];
                  return Text(serie.originalName);
                })
            : Center(
                child: CircularProgressIndicator(),
            );
      },
    );
  }
}
