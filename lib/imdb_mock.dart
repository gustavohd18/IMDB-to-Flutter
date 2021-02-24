import 'dart:async';
import 'package:imdb/service_abstract.dart';

import 'model/movie.dart';
import 'model/serie.dart';

class IMDBMock implements Service {
  String _key;

  IMDBMock(this._key);
  
  void setKey(String key) {
    this._key = key;
  }

  String getKey() {
    return this._key;
  }

  Future<List<Movie>> getTop10Movies() async {
    final movie = Movie(
        id: "test",
        title: "Avengers",
        overview: "test two",
        voteAverage: "5",
        posterPath: "http",
        releaseDate: "23/08");

    final list = [movie];

    return list;
  }

  Future<List<Serie>> getTop10Series() async {
    final serie = Serie(
        id: "test",
        originalName: "How I met your mother",
        overview: "test two",
        voteAverage: "5",
        posterPath: "http",
        backdropPath: "http2",
        releaseDate: "23/08");

    final list = [serie];

    return list;
  }

  Future<List<Movie>> searchMoviesPage(keyword, page) async {
    final movie = Movie(
        id: "test",
        title: "Avengers",
        overview: "test two",
        voteAverage: "5",
        posterPath: "http",
        releaseDate: "23/08");

    final list = [movie];

    return list;
  }

  Future<List<Serie>> searchSeriesPage(keyword, page) async {
    final serie = Serie(
        id: "test",
        originalName: "How I met your mother",
        overview: "test two",
        voteAverage: "5",
        posterPath: "http",
        backdropPath: "http2",
        releaseDate: "23/08");

    final list = [serie];

    return list;
  }
}
