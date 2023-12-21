import 'dart:io';

void main() {
  String x;
  double y, z;

  stdout.writeln(
      'Hansi əməliyyat icra edilsin?\n 1-toplama \n 2-çixma \n 3-vurma \n 4-bölmə');
  x = stdin.readLineSync().toString();
  stdout.writeln('Birinci ədədi daxil et:');
  y = double.parse(stdin.readLineSync().toString());
  stdout.writeln('İkinci ədədi daxil et:');
  z = double.parse(stdin.readLineSync().toString());

  if (x == "1") {
    print(y + z);
  } else if (x == "2") {
    print(y - z);
  } else if (x == "3") {
    print(y * z);
  } else if (x == "4") {
    print(y / z);
  }
}
