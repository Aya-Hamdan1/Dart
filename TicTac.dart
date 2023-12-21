import 'dart:io';
import 'dart:core';

bool winner = false;
bool isX = true;
int count = 0;

List<List<String>> values = [['1', '2', '3'], ['4', '5', '6'],[ '7', '8', '9']];

void show(){

  for (int i = 0; i < 3; i++) {
      for (int j = 0; j < 3; j++) 
      {
        stdout.write(values[i][j]);
        if (j < 2)
         stdout.write(' | ');

      }
        print('');
      
  }
}

void askToPaly(){
  int row, col;
  int count = 0;
  String current = isX ? 'X': 'O';
  while(true){
  show();
  print('please enter the number of the square where you want to place your ${isX == true ?'X': 'O'} ');
  int num = int.parse(stdin.readLineSync()!);
  if((0 < num) && (num <= 9) && (num != null)){
    row = (num -1)~/3;
    col = (num -1)%3;
   if( (values[row][col] != 'X') && (values[row][col] != 'O')){
  current = isX ? 'X': 'O';
  values[row][col] = current;
  count ++;
  if(checkWin()){
    print('$current is Win!!');
    break;
  }
  else if(count >= 9){
    break;
  }
  else{
    isX = !isX;
    continue;
  }


   }
   else{
    print('Please choose another number ');
   }
  }
  else{
    print('Invalide input ');


  }
}
}

bool checkWin(){
  String player = isX ? 'X': 'O';
  for(int i = 0; i< 3; i++){
    if((values[i][0] == player && values[i][1] == player && values[i][2] == player) ||
        (values[0][i] == player && values[1][i] == player && values[2][i] == player)) {
        return true;
  }
}
  if (values[0][0] == player && values[1][1] == player && values[2][2] == player ||
        values[0][2] == player && values[1][1] == player && values[2][0] == player) {
      return true;
    }

    return false;
}
void main(){
  askToPaly();
}