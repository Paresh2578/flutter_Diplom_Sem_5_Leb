import 'dart:io';

void main() {
  print("Enter a number:");
  int num = int.parse(stdin.readLineSync()!);

  int reversed = 0;

  // Reverse the number using a loop
  while (num > 0) {
    int lastDigit = num % 10;
    reversed = reversed * 10 + lastDigit;
    num = num ~/ 10; // Remove the last digit from the number
  }

  print("The reversed number is: $reversed");
}
