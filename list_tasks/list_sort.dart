void main() {
  List<int> list1 = [5, 2, 8, 1, 9];
  List<int> list2 = [3, 7, 4, 6];

  List<int> newList = [...list1, ...list2];

  newList.sort();
  print(newList);
}
