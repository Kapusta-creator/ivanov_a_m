import 'dart:io';


void main(){
    List<String> input = stdin.readLineSync()!.split("");
    String answer = "";
    if(input.length >= 2)
        if(input[0] == " " && input[1] == " "){
            answer += " ";
        }
        else{
            answer += input[0] + input[1];
        }
    else if(input.length == 1)
        answer = input[0];
    for(int i = 2; i < input.length; i++){
        if(input[i] == " "){
            if(input[i - 1] != " ")
                answer += input[i];
        }
        else
            answer += input[i];
    }
    print(answer);
}
