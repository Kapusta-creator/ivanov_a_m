import 'dart:io';

void main(){
  List<int> input = [];
  stdin.readLineSync()!.split(' ').forEach((element){
    input .add(int.parse(element));});
  for(int i = 0; i < input.length; i += 2){
      stdout.write(input[i].toString() + " ");
  }
}
