import 'dart:io';

void main() {
  print("Enter array length");
  int n = int.parse(stdin.readLineSync()!);

  List<double> list = [];

  for(int i=0;i<n;i++){
    print("Enter any numbers : ");
    double num = double.parse(stdin.readLineSync()!);
    list.add(num);
  }

  double sum = 0;

  for (int j = 0; j < list.length; j++) {
    sum += list[j];
    stdout.writeln(list[j]);
  }

  stdout.write("sum of list is ${sum.toStringAsFixed(2)}");
}
