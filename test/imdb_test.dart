import 'package:flutter_test/flutter_test.dart';

import 'package:imdb/imdb_mock.dart';
import 'package:imdb/model/movie.dart';
import 'package:imdb/model/serie.dart';

void main() {

  group("IMDB", () {
  test('should get movie from top 10 and search page', () async {
    final imdb = IMDBMock("mock_key");

    expect(await imdb.getTop10Movies(), isInstanceOf<List<Movie>>());
    expect(await imdb.searchMoviesPage("avenger",0), isInstanceOf<List<Movie>>());
  });

  test('should get series from top 10 and search page', () async {
    final imdb = IMDBMock("mock_key");
    
    expect(await imdb.getTop10Series(), isInstanceOf<List<Serie>>());
    expect(await imdb.searchSeriesPage("WandaVision",0), isInstanceOf<List<Serie>>());
  });

  });
}
