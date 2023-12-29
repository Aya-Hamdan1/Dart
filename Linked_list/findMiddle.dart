import 'Node.dart';
import 'linked_list.dart';
Node<T>? findMiddleNode<T>(LinkedList<T> mylist) {
    if (mylist.head == null) {
      return null;
    }

    Node<T>? p1 = mylist.head;
    Node<T>? p2 = mylist.head;

    while (p2 != null && p2.next != null) {
      p1 = p1!.next;
      p2 = p2.next!.next;
    }

    return p1;
  }

  void main(){
final list = LinkedList<int>();
list.append(1);
list.append(2);
list.append(3);
list.append(4);
list.append(5);

var n = findMiddleNode(list);
int i = n!.value;
print('$i');
}