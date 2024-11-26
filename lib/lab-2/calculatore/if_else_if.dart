import 'dart:io';

void main() {
  print("Enter two numbers: ");
  double num1 = double.parse(stdin.readLineSync()!);
  double num2 = double.parse(stdin.readLineSync()!);

  print("Choose an operation: +, -, *, /");
  String? choice = stdin.readLineSync();

  if (choice == '+') {
    print("Result: ${num1 + num2}");
  } else if (choice == '-') {
    print("Result: ${num1 - num2}");
  } else if (choice == '*') {
    print("Result: ${num1 * num2}");
  } else if (choice == '/') {
    if (num2 != 0) {
      print("Result: ${num1 / num2}");
    } else {
      print("Error: Division by zero is not allowed.");
    }
  } else {
    print("Invalid operation.");
  }
}
