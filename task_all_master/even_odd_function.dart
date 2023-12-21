import 'dart:io';

void main() {
  int x = int.parse(stdin.readLineSync().toString());

  sumNumber(x);
}

void sumNumber(int number) {
  if(number%2==0){
    print("even");

  }
  else  if(number%2==1){
    print("odd");
}
}