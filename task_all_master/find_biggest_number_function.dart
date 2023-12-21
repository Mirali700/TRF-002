
void main() {
List <int> myList =[1,2,324,456,43,46];
biggestNumber(myList);
}

int biggestNumber(List<int> listName){
listName.sort();

listName=listName.reversed.toList();
print(listName[0]);

return 0;
}
