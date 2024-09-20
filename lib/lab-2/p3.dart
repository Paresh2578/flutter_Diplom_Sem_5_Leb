import 'dart:io';

void main() {

  print("Enter array length");
  int n = int.parse(stdin.readLineSync()!);

  List<String> list = [];

  for(int i=1;i<=n;i++){
    print("Enter any string : ");
    String str = stdin.readLineSync()!;
    list.add(str);
  }

  for (int j = 0; j < list.length; j++) {
    print(list[j]);
  }
}
