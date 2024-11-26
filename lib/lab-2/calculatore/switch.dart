import 'dart:io';

void main() {
  print("Enter two numbers: ");
  double num1 = double.parse(stdin.readLineSync()!);
  double num2 = double.parse(stdin.readLineSync()!);

  print("Choose an operation: +, -, *, /");
  String? choice = stdin.readLineSync();

  switch (choice) {
    case '+':
      print("Result: ${num1 + num2}");
      break;
    case '-':
      print("Result: ${num1 - num2}");
      break;
    case '*':
      print("Result: ${num1 * num2}");
      break;
    case '/':
      if (num2 != 0) {
        print("Result: ${num1 / num2}");
      } else {
        print("Error: Division by zero is not allowed.");
      }
      break;
    default:
      print("Invalid operation.");
  }
}
