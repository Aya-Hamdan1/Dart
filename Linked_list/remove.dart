import 'Node.dart';
import 'linked_list.dart';
LinkedList<T> removeAllOccurrences<T>(LinkedList<T> myList,T target) {
    Node<T>? current = myList.head;
    Node<T>? prev = null;

    while (current != null) {
      if (current.value == target) {
        if (prev == null) {
          // If the target is at the head of the list
          myList.head = current.next;
        } 
        else {
          // Skip the current node
          prev.next = current.next;
        }
      } 
      else {
        prev = current;
      }

      current = current.next;
    }
    return myList;
  }
void printList<T>(LinkedList<T> mylist){
  var current = mylist.head;
  while(current != null){
    print(current.value);
    current = current.next;
  }
}

void main(){
final list = LinkedList<int>();
list.append(1);
list.append(2);
list.append(3);
list.append(4);
list.append(5);


final m = removeAllOccurrences(list, 3);
printList(m);
}