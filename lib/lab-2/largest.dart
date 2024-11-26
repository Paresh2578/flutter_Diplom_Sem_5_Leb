import 'dart:io';

void main() {
  print("Enter the first number:");
  double num1 = double.parse(stdin.readLineSync()!);

  print("Enter the second number:");
  double num2 = double.parse(stdin.readLineSync()!);

  print("Enter the third number:");
  double num3 = double.parse(stdin.readLineSync()!);

  double largest;

  // Compare num1 with num2 and num3
  if (num1 > num2) {
    if (num1 > num3) {
      largest = num1;
    } else {
      largest = num3;
    }
  } else {
    // num2 is greater or equal to num1
    if (num2 > num3) {
      largest = num2;
    } else {
      largest = num3;
    }
  }

  print("The largest number is: $largest");
}
