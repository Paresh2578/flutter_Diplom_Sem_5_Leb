import 'dart:io';

void main() {
  print("Enter the first number:");
  double n1 = double.parse(stdin.readLineSync()!);

  print("Enter the second number:");
  double n2 = double.parse(stdin.readLineSync()!);

  print("Enter the third number:");
  double n3 = double.parse(stdin.readLineSync()!);

  double largest = n1 > n2 ? (n1 > n3 ? n1 : n3) : (n2 > n3 ? n2 : n3);

  print(largest);
}
