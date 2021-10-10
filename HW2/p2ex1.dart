import 'dart:io';

import 'dart:math';

double segmentLength(int x1, int y1, int x2, int y2){
    return sqrt((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2));
}

double trianglePerimetr(int x1, int y1, int x2, int y2, int x3, int y3){
    double a = segmentLength(x1, y1, x2, y2), b = segmentLength(x1, y1, x3, y3),
            c = segmentLength(x2, y2, x3, y3);
    double p = (a + b + c) / 2.0;
    return sqrt(p * (p - a) * (p - b) * (p - c));
}

void main(){
    int x1, x2, x3, y1, y2, y3;
    x1 = int.parse(stdin.readLineSync()!);
    y1 = int.parse(stdin.readLineSync()!);
    x2 = int.parse(stdin.readLineSync()!);
    y2 = int.parse(stdin.readLineSync()!);
    x3 = int.parse(stdin.readLineSync()!);
    y3 = int.parse(stdin.readLineSync()!);
    print(trianglePerimetr(x1, y1, x2, y2, x3, y3));
}
