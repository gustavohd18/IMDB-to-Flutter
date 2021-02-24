import 'package:imdb/model/movie.dart';
import 'package:imdb/model/serie.dart';

abstract class Service {
  Future<List<Movie>> getTop10Movies();
  Future<List<Serie>> getTop10Series();
  Future<List<Serie>> searchSeriesPage(String keyword, int page);
  Future<List<Movie>> searchMoviesPage(String keyword, int page);
  void setKey(String key);
  String getKey();
}
