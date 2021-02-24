# imdb

Simple api to connect with tmdb services and get most popular movies and series, also search specifically for some title.

Features:

- get the top 10 most popular Movies and Series.
- Search for Movies and Series.

## Getting Started

### Instructions

IN PROGRESS

1. Go to [TMBD]https://developers.themoviedb.org/3 to create account and get Key to use service.
1. Open a command line and cd to your projects root folder
1. In your pubspec, add an entry for dart-imdb to your dependencies (example below)
1. pub install

### Pubspec

To install the package inside the pub file add dependencie.

```yaml
dependencies:
  imdb: 0.0.1
```

### Example

```dart
import 'package:imdb/imdb.dart';

var imdb = IMDB("your key");

FutureBuilder<List<Serie>>(
      future: imdb.getTop10Series(),
      builder: (context, snapshot) {
        return snapshot.hasData
            ? ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(6.0),
                itemCount: snapshot.data.length,
                itemBuilder: (_, int position) {
                  final serie = snapshot.data[position];

                  return Text(series.originalName)
                  );
                })
            : Center(
                child: CircularProgressIndicator(),
              );
      },
    );
)
```

## Release notes

See CHANGELOG
