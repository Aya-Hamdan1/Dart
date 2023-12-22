import 'Node.dart';

class LinkedList<E> {
  Node<E>? head;
  Node<E>? tail;

  bool get isEmpty => head == null;

  void push(E value) {
  head = Node(value: value, next: head);
  tail ??= head;
}

 void append(E value) {
  if (isEmpty) {
    push(value);
    return;
  }
  tail!.next = Node(value: value);
  tail = tail!.next;
}

}