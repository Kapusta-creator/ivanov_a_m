import 'dart:io';

void main(){
  List<int> input = [];
  stdin.readLineSync()!.split(' ').forEach((element){
    input .add(int.parse(element));});
  bool flag = false;
  double s = 0, k = 0;
  for(int i = 0; i < input.length; i++){
    if(input[i] % 2 != 0){
      flag = true;
      s += input[i];
      k++;
    }
  }
  if(flag)
    print((s / k).toStringAsFixed(2));
  else
    print("NO");
}