import 'dart:io';

// Method to find the maximum of two numbers
int findMaximum(int num1, int num2) {
  return (num1 > num2) ? num1 : num2;
}

void main() {
  // Input from the user
  print("Enter the first number:");
  int number1 = int.parse(stdin.readLineSync()!);

  print("Enter the second number:");
  int number2 = int.parse(stdin.readLineSync()!);

  // Find the maximum number
  int maxNumber = findMaximum(number1, number2);

  // Display the result
  print("The maximum number between $number1 and $number2 is: $maxNumber");
}
