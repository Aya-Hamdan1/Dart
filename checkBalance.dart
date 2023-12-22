import 'dart:io';
bool check(String value){
  int count1 = 0;
  int count2 = 0;
  for(int i=0; i<value.length; i++){
    if(value[i] == '('){
    count1++;
    }
    else if(value[i] == ')'){
    count2++;
    }
  }
  if(count2 == count1){
    return true;
  }
  return false;
}

void main(){
  String e1 = '(a+b)*(c-d)';
  String e2 = '(a+b)*())';
  String isBalance = check(e1) ?'The Expression is Balance ':'The Expression is not Balance';
  print('$e1');
  print('$isBalance');
  String isBalance2 = check(e2) ?'The Expression is Balance ':'The Expression is not Balance';
  print('$e2');
  
  print('$isBalance2');


}