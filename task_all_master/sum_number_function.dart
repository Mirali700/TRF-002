import 'dart:io';

void main() {
  int x = int.parse(stdin.readLineSync().toString());
  int y = int.parse(stdin.readLineSync().toString());
  sumNumber(x, y);
}

void sumNumber(int number1, int number2) => print(number1 + number2);
