import 'linked_list.dart';
import 'Node.dart';



LinkedList<T> rev<T>(LinkedList<T> myList){
  
  var previous = null;
  var current = myList.head;
  var next = current?.next;
  while ( current != null){
    
  next = current.next;
  current.next = previous;
  previous = current;
  current = next;
  }
   myList.head = previous;

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


final m = rev(list);
printList(m);
}