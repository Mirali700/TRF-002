import 'dart:io';
import 'dart:math';

void main() {
  List<String> weakPasswordChars = ['a', 'b', 'c', '1', '2', '3'];
  List<String> mediumPasswordChars = [
    'a',
    'b',
    'c',
    '1',
    '2',
    '3',
    '!',
    '@',
    '#'
  ];
  List<String> strongPasswordChars = [
    'a',
    'b',
    'c',
    '1',
    '2',
    '3',
    '!',
    '@',
    '#',
    'A',
    'B',
    'C'
  ];

  String generatePassword(int length, List<String> chars) {
    Random random = Random();
    List<String> password =
        List.generate(length, (index) => chars[random.nextInt(chars.length)]);
    password.shuffle();
    return password.join();
  }

  print(" 1-WEAK \N 2-MEDIUM \N 3-STRONG");
  int passwordStrength = int.parse(stdin.readLineSync().toString());
  String passWord = "";
  if (passwordStrength == 1) {
    passWord = generatePassword(6, weakPasswordChars);
  } else if (passwordStrength == 2) {
    passWord = generatePassword(8, mediumPasswordChars);
  } else if (passwordStrength == 3) {
    passWord = generatePassword(10, strongPasswordChars);
  } else {
   print("invalid");
  }
  print(passWord);
}
