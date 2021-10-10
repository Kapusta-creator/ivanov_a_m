import 'dart:io';

void BinFraction(double x, int n){
    String s = "";
    while(x != 1.0 && n > 0){
        x *= 2;
        s += x.toInt().toString();
        if(x > 1)
          x--;
        n--;
    }
    if(s.length < n){
        for(int i = 0; i < n - s.length; i++){
            s += "0";
        }
    }
    print(s);
}

void main(){
    List<String> input = [];
    input = stdin.readLineSync()!.split(' ');
    double x;
    x = double.parse(input[0]);
    int n;
    n = int.parse(input[1]);
    BinFraction(x, n);
}
