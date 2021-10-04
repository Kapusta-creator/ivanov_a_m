import 'dart:io';

void main(){
  List<int> ans = [];
  int n = int.parse(stdin.readLineSync()!);
  for(int i = 4; i <= n * 3 + 1; i += 3){
      ans.add(i);
  }
  print(ans.join(" "));
}