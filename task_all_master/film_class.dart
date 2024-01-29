void main() {
  MovieDatabase myDatabase = MovieDatabase();

  Genre genre1 = Genre('Action');
  Genre genre2 = Genre('Comedy');

  Film film1 = Film('The Avengers', 2012, [genre1]);
  Film film2 = Film('Dumb and Dumber', 1994, [genre2]);

  myDatabase.addGenre(genre1);
  myDatabase.addGenre(genre2);

  myDatabase.addFilm(film1);
  myDatabase.addFilm(film2);

  myDatabase.showAllFilms();
  myDatabase.showAllGenres();
}
class Genre {
  String name;

  Genre(this.name);
}

class Film {
  String title;
  int editionYear;
  List<Genre> genres;

  Film(this.title, this.editionYear, this.genres);

  void showFilmInfo() {
    print('Başlıq: $title');
    print('Buraxılış İli: $editionYear');
    print('Janrlar:');
    for (var genre in genres) {
      print('- ${genre.name}');
    }
  }
}

class MovieDatabase {
  List<Film> films = [];
  List<Genre> genres = [];

  void addGenre(Genre genre) {
    genres.add(genre);
    print('Janr əlavə edildi: ${genre.name}');
  }

  void addFilm(Film film) {
    films.add(film);
    print('Film əlavə edildi: ${film.title}');
  }

  void showAllFilms() {
    print('Bütün filmlər verilənlər bazasında:');
    for (var film in films) {
      film.showFilmInfo();
      print('------------------------');
    }
  }

  void showAllGenres() {
    print('Bütün janrlar verilənlər bazasında:');
    for (var genre in genres) {
      print('- ${genre.name}');
    }
  }
}


