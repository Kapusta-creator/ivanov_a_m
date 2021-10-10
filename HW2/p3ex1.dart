import 'dart:io';

int fib(num n){
  if(n == 1)
    return 0;
  else if(n <= 3 && n > 1)
    return 1;
  else
    return fib(n - 1) + fib(n - 2);
}


void main(){
  print(fib(int.parse(stdin.readLineSync()!)));
}
