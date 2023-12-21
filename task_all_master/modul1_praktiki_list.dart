
 /* List <String> choice = ['dash','qayci','kagiz'];
  for(int i=1;i<=choice.length;i++){
print("$i:${choice[i-1]}");
  }*/
  import 'dart:io';
import 'dart:math';

void main() {
  int userScore = 0;
  int compScore = 0;
  List <String> choice = ['dash','qayci','kagiz'];

  while (true) {
   for(int i=1;i<=choice.length;i++){
print("$i:${choice[i-1]}");
  }
    int choiceUser = int.parse(stdin.readLineSync().toString());
    int choiceComp = Random().nextInt(3) + 1;
    print("reqib secimi: $choiceComp");
    print("senin secimin: $choiceUser");
    if ((choiceUser == 1 && choiceComp == 2) ||
        (choiceUser == 2 && choiceComp == 3) ||
        (choiceUser == 3 && choiceComp == 1)) {
      userScore++;
      print("SEN QAZANDIN");
    } else if ((choiceUser == 2 && choiceComp == 1) ||
        (choiceUser == 3 && choiceComp == 2) ||
        (choiceUser == 1 && choiceComp == 3)) {
      compScore++;
      print("REQIB QAZANDI");
    } else {
      print("beraber");
    }

    print("SENIN BALIN:$userScore");
    print("REQIBIN BALI:$compScore");
  }
}

 