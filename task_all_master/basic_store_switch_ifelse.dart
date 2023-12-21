import 'dart:io';

void main() {
  stdout.writeln('Sisteme daxil ol:');
  String name = stdin.readLineSync().toString();
  stdout.writeln('Salam $name');

  stdout.writeln('Product secin : \n 1-Telefon \n 2-Komputer \n 3-Tablet');
  int product = int.parse(stdin.readLineSync().toString());

  stdout.writeln('Odenish paymentmethodunu sechin : \n 1-Birbasha \n 2-Kredit kart');
  int paymentmethod = int.parse(stdin.readLineSync().toString());
  int tel = 100;
  int tab = 200;
  int komp = 300;

  switch (product) {
    case 1:
      if (paymentmethod == 1) {
        print('Qiymet:$tel Azn');
      } else {
        print('Qiymet:${tel + tel * 10 / 100} Azn');
      }
    case 2:
       if (paymentmethod == 1) {
        print('Qiymet:$komp Azn');
      } else {
        print('Qiymet:${komp + komp * 10 / 100} Azn');
      }
    case 3:
       if (paymentmethod == 1) {
        print('Qiymet:$tab Azn');
      } else {
        print('Qiymet:${tab + tab * 10 / 100} Azn');
      }
    default:
      print('Product tapilmadi');
  }
}
