import 'dart:io';

int SumOfDigits(String n){
    int sum = 0;
    for(int i = 0; i < n.length; i++){
        sum += int.parse(n[i]);
    }
    return sum;
}


void main(){
    print(SumOfDigits(stdin.readLineSync()!));
}
