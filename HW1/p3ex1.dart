import 'dart:io';

void main(){
  List<int> input = [], numbers = [];
  stdin.readLineSync()!.split(' ').forEach((element){
    input .add(int.parse(element));});
  int n = input[0], a = input[1] - 1, b = input[2] - 1,
      c = input[3] - 1, d = input[4] - 1, t;
  for(int i = 1; i <= n; i++){
      numbers.add(i);
  }
  for(int i = a; i <= (a + b) / 2; i++){
      t = numbers[i];
      numbers[i] = numbers[b - i + a];
      numbers[b - i + a] = t;
  }
  for(int i = c; i <= (c + d) / 2; i++){
    t = numbers[i];
    numbers[i] = numbers[d - i + c];
    numbers[d - i + c] = t;
  }
  print(numbers.join(" "));
}