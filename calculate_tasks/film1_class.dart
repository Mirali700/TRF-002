void main() {
  

  Genre genre1 = Genre('Action');
  Genre genre2 = Genre('Comedy');

  Film film1 = Film('The Avengers', 2012, [genre1]);
  Film film2 = Film('Dumb and Dumber', 1994, [genre2]);
  MovieDatabase.addGenre(genre1);
  MovieDatabase.addGenre(genre2);
  MovieDatabase.addFilm(film1);
  MovieDatabase.addFilm(film2);
  MovieDatabase.showAllFilms();
  MovieDatabase.showAllGenres();
    
}

class Genre {
  String? name;

  Genre(this.name);
}

class Film {
  String? title;
  int? editionYear;
  List<Genre> genres;

  Film(this.title, this.editionYear, this.genres);
  Film.showFilmInfo(this.title, this.editionYear, this.genres) {
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
  MovieDatabase.addGenre(Genre genre) {
    genres.add(genre);
    print('Janr əlavə edildi: ${genre.name}');
  }
  MovieDatabase.addFilm(Film film) {
    films.add(film);
    print('Film əlavə edildi: ${film.title}');
  }
  MovieDatabase.showAllFilms() {
   print('Bütün filmlər verilənlər bazasında:');
    for (var film in films) {
      print(film);
      print('------------------------');
    }
  }
  MovieDatabase.showAllGenres() {
    print('Bütün janrlar verilənlər bazasında:');
    for (var genre in genres) {
      print('- ${genre.name}');
    }
  }
}
