import 'dart:io';

void main() {

  print("Enter array length");
  int n = int.parse(stdin.readLineSync()!);

  List<int> list = [];

  for(int i=1;i<=n;i++){
    print("Enter any numbers : ");
    int num = int.parse(stdin.readLineSync()!);
    list.add(num);
  }

  for (int j = 0; j < list.length; j++) {
    print(list[j]);
  }
}
