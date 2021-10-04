import 'dart:io';

void main(){
  List<int> input = [];
  stdin.readLineSync()!.split(' ').forEach((element){
    input .add(int.parse(element));});
  int a, b, ch = 0;
  a = input[0];
  b = input[1];
  while(a >= b){
      a -= b;
      ch++;
  }
  print(ch.toString() + " " + a.toString());
}