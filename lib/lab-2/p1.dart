import 'dart:io';

void main() {
  int num = -1, ce = 0, co = 0;

  print("Enter array length");
  int n = int.parse(stdin.readLineSync()!);

  List<int> list = [];
  for(int i=1;i<=n;i++){
    print("Enter any numbers : ");
    int num = int.parse(stdin.readLineSync()!);
    list.add(num);
  }

  for(int i=0;i<list.length;i++){
    if(list[i]%2 == 0){
      ce++;
    }else{
      co++;
    }
  }


  print("Number of even are $ce");
  print("Number of odd are $co");

}

