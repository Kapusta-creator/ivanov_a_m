import 'dart:io';

String find_new_letter(String let, int n){
  String alph = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
  for(int i = 0; i < alph.length; i++){
    if(let == alph[i]){
      return alph[(i - n) % 26];
    }
  }
  return "ERROR";
}

void main(){
  String s = stdin.readLineSync()!, answer = '';
  int n = int.parse(stdin.readLineSync()!);
  for(int i = 0; i < s.length; i++){
    answer += find_new_letter(s[i], n);
  }
  print(answer);
}