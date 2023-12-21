import 'dart:io';

List<T> reverseList<T>(List<T> myList) {
  List<T> reversedList = [];
  while (myList.isNotEmpty) {
    reversedList.add(myList.removeLast());
  }

  return reversedList;
}

void main() {
  List<int> myList = [1, 2, 3, 4, 5, 6];
  print('Original List: $myList');
 List<int> reversedList = reverseList(myList);
  print('Reversed List with Stack: $reversedList');
}