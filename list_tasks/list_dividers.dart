import 'dart:io';

void main() {
  stdout.write('Bir ədəd daxil edin: ');
  int num = int.parse(stdin.readLineSync().toString());

  List<int> dividers = [];
  for (int i = 1; i <= num; i++) {
    if (num % i == 0) {
      dividers.add(i);
    }
  }

  print('$num ədədin bölənləri: $dividers');
}
