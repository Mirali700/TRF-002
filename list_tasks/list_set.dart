void main() {
  List<int> list = [3, 5, 1, 3, 5, 6, 8, 2, 1, 7, 4, 11, 25, 454, 323];
  List<int> newList = list.toSet().toList();
  newList.sort();
  int secondElement = newList[newList.length - 2];
  print(secondElement);
  print(newList.reversed);
}