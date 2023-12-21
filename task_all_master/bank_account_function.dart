import 'dart:io';

int choice = 0;
void main() {
  print("salam!");
  print("Ad daxil et:");
  String userName = stdin.readLineSync().toString();
  print("Balansdaxil et:");
  int userBalance = int.parse(stdin.readLineSync().toString());
  print("Hesab nomresi daxil et:");
  String userNumber = stdin.readLineSync().toString();

  showInfo(userName, userBalance, userNumber);
  checkChoice();

  if (choice == 1) {
    cashIn(userBalance);
  } else if (choice == 2) {
    cashOut(userBalance);
  } else
    checkChoice();
}

void showInfo(String name, int balance, String number) {
  print("Ad:$name");
  print("Balans:$balance");
  print("Nomre:$number");
}

void cashOut(int balance) {
  print("Mexaric etmek istediyiviz meblegi daxil edin:");
  int priceOut = int.parse(stdin.readLineSync().toString());
  print('BALANS:${balance - priceOut}');
}

void cashIn(int balance) {
  print("Medaxil etmek istediyiviz meblegi daxil edin:");
  int priceIn = int.parse(stdin.readLineSync().toString());
  print('BALANS:${balance + priceIn}');
}

void checkChoice() {
  print("emeliyyat secin:\n 1-medaxil \n 2-mexaric");
  choice = int.parse(stdin.readLineSync().toString());
}
