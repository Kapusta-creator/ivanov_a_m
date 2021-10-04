import 'dart:io';

void main(){
  List<String> input = [];
  stdin.readLineSync()!.split(' ').forEach((element){
    input .add(element);});
  int maxx = 0;
  String answer = "";
  for(String word in input){
      if(word.length > maxx){
          maxx = word.length;
          answer = word;
      }
  }
  print(answer);
  print(maxx);
}
