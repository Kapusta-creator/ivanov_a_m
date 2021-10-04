import 'dart:io';

void main(){
  List<int> input = [];
  stdin.readLineSync()!.split(' ').forEach((element){
    input .add(int.parse(element));});
  bool flag = false;
  int s = 0;
  for(int i = 0; i < input.length; i++){
      if(input[i] % 2 == 0){
          flag = true;
          s += input[i];
      }
  }
  if(flag)
    print(s);
  else
    print("NO");
}