import 'dart:io';

int SumOfDigits(String n){
  int sum = 0;
  for(int i = 0; i < n.length; i++){
    sum += int.parse(n[i]);
  }
  return sum;
}

int SumOfThirteen(int n){
    int k = 0;
    for(int i = 0; i < n; i++){
        if(SumOfDigits(i.toString()) % 13 == 0){
            k++;
        }
    }
    return k;
}

void main(){
    print(SumOfThirteen(int.parse(stdin.readLineSync()!)));
}
