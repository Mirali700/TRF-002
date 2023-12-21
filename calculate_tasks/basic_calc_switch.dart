import 'dart:io';

void main() {
  double x, y;
  String operator;

  stdout.writeln('Enter first number :');
  x = double.parse(stdin.readLineSync().toString());

  stdout.writeln('Enter second number :');
  y = double.parse(stdin.readLineSync().toString());

  stdout.writeln('Enter operator :');
  operator = stdin.readLineSync().toString();

  switch (operator) {
    case '+':
      print(x + y);

    case '-':
      print(x - y);

    case '*':
      print(x * y);

    case '/':
      print(x / y);

    default:
      print("Enter operator!");
  }
}
