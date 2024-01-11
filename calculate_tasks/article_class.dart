void main() {
  Journal myJournal = Journal();

  Article article1 = Article(
      'Dart', 'Togrul', 'Dartin ilkin anlayislari.');
  Article article2 = Article(
      'Flutter', 'Receb', 'Flutterin ilkin anlayislari.');

  myJournal.addArticle(article1);
  myJournal.addArticle(article2);

  myJournal.displayAllArticles();

  Article? foundArticle = myJournal.searchArticleByTitle('Flutter');
  if (foundArticle != null) {
    foundArticle.displayArticleInfo();
  }
}

class Journal {
  List<Article> articles = [];

  void addArticle(Article article) {
    articles.add(article);
    print('Meqale elave olundu: ${article.title}');
  }

  void displayAllArticles() {
    print('Jurnaldaki meqaleler:');
    for (var article in articles) {
      article.displayArticleInfo();
      print('------------------------');
    }
  }

  Article? searchArticleByTitle(String title) {
    for (var article in articles) {
      if (article.title == title) {
        print('Meqale tapildi: $title');
        return article;
      }
    }
    print('Meqale tapilmadi: $title');
    return null;
  }
}

class Article {
  String title;
  String author;
  String content;

  Article(this.title, this.author, this.content);

  void displayArticleInfo() {
    print('Ad: $title');
    print('Muellif: $author');
    print('Mezmun: $content');
  }
}
