void main() {
List <int> myList =[1,2,3];
multiplyNumber(myList);

}
void multiplyNumber(List<int> listName){
  int mult=1;
 for (int number in listName){
   mult*=number;




 }
print(mult);

}