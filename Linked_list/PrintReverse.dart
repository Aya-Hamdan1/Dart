import 'linked_list.dart';
import 'Node.dart';

List<String> printReverse<T>(LinkedList<T> myList){
  String value = '';
  List<String> reversedList = [];
  // if(myList.head != null){
  //   print('null');
  //   return reversedList;
  // }
  var current = myList.head;
  var n;
  while (current!.next != myList.tail) {
    n = current.value;
    value =value +'$n';
    current = current.next;
  }
   n = current.value;
   value =value +'$n';
   n = myList.tail?.value;
   value =value +'$n';
  for(int i = value.length-1; 0<=i ; i--){
    reversedList.add(value[i]);
  }
  return reversedList;
}
void main(){
final list = LinkedList<int>();
list.append(1);
list.append(2);
list.append(3);
list.append(4);
list.append(5);


final m = printReverse(list);
print(m);
}