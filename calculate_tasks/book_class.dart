void main() {
   

  Book.displayInfo('Roman', 'Harry Potter', 2001, 400, 'J.K. Rowling');
  Book.borrowBook();
  Book.borrowBook();
  
}

class Book {
  String? type;
  String? name;
  int? editionDate;
  int? pageCount;
  String? author;
  bool available = true;

  Book(this.type, this.name, this.editionDate, this.pageCount, this.author);
  Book.displayInfo(
      this.type, this.name, this.editionDate, this.pageCount, this.author) {
    print('Sinif: $type');
    print('name: $name');
    print('Neshr ili: $editionDate');
    print('Səhifə sayı: $pageCount');
    print('Müəllif: $author');
    print('Mövcudluq: ${available ? 'Var' : 'Yoxdur'}');
  }
  Book.borrowBook() {
    if (available) {
      print('Kitab ugurla goturuldu.');
      available = false;
    } else {
      print('Kitab mövcud deyil.');
    }
  }
  Book.returnBook() {
    if (available) {
      print('Kitab ugurla qaytarildi.');
      available = true;
    } else {
      print('Kitab hal-hazırda mövcuddur.');
    }
  }

}
