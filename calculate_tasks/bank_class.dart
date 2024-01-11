import 'dart:io';

int choice = 0;
void main() {
  Customer customer1 = Customer("Mirali", 400, "11223344");
  Customer.showInfo("Mirali", 400, "11223344");
  checkChoice(); //!secimi yoxluyur FUNCTION dir
  if (choice == 1) {
    Customer.cashIn(customer1.userBalance!);
  } else if (choice == 2) {
    Customer.cashOut(customer1.userBalance!);
  }
}

class Customer {
  int? userBalance;
  int? cashIn;
  int? cashOut;
  String? userName;
  String? userNumber;
  Customer(this.userName, this.userBalance, this.userNumber);
  Customer.showInfo(this.userName, this.userBalance, this.userNumber) {
    print("$userName $userBalance $userNumber");
  }
  Customer.cashOut(int balance) {
    print("Mexaric etmek istediyiviz meblegi daxil edin:");
    int priceOut = int.parse(stdin.readLineSync().toString());
    print('BALANS:${balance - priceOut}');
  }
  Customer.cashIn(int balance) {
    print("Medaxil etmek istediyiviz meblegi daxil edin:");
    int priceIn = int.parse(stdin.readLineSync().toString());
    print('BALANS:${balance + priceIn}');
  }
}

void checkChoice() {
  print("emeliyyat secin:\n 1-medaxil \n 2-mexaric");
  choice = int.parse(stdin.readLineSync().toString());
}//!secimi yoxluyan FUNCTION
