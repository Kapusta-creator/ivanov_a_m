import 'dart:io';

void main(){
  List<String> input = [];
  stdin.readLineSync()!.split('').forEach((element){
    input .add(element);});
  int n = input.length;
  if (input.toSet().length != n){
      print("YES");
  }
  else{
      print("NO");
  }
}
