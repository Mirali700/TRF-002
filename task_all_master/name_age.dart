import 'dart:io';

void main() {
  String name;
  int x, y;

  stdout.writeln('Yash daxil et:');
  x = int.parse(stdin.readLineSync().toString());
  stdout.writeln('Ad daxil et:');
  name = stdin.readLineSync().toString();

  y = 100 - x;

  print('Ad:$name');
  print('100 yasha qalan il:$y');
}
