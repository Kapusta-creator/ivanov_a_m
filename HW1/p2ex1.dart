import 'dart:io';

void main(){
  List<int> input = [], keys, values;
  stdin.readLineSync()!.split(' ').forEach((element){
    input .add(int.parse(element));});
  Map<int, int> numbers = {};
  for(int i = 0; i < input.length; i++){
      numbers.update(input[i], (value) => value + 1, ifAbsent: () => 1);
  }
  keys = numbers.keys.toList();
  values = numbers.values.toList();
  int maxx = 0, ind = 0;
  for(int i = 0; i < values.length; i++){
      if(maxx < values[i]){
          maxx = values[i];
          ind = i;
      }
  }
  print(keys[ind]);
}