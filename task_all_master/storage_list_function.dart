import 'dart:io';

void main(){
  List <String> storage=['phone','book','macbook'];
  
  for(int i=1;i<=storage.length;i++){
print("$i:${storage[i-1]}");
}
while(true){
print("SECIM EDIN:\N 1-ADD \N 2-REMOVE");
int choice=int.parse(stdin.readLineSync().toString());
if (choice==1){
  addProduct(storage);
}
else if(choice==2){
  removeProduct(storage);
}
}}


void addProduct(List example){
 String product=stdin.readLineSync().toString();
 example.add(product);
 print(example);
}
void removeProduct(List example){
 String product=stdin.readLineSync().toString();
 example.remove(product);
 print(example);
}