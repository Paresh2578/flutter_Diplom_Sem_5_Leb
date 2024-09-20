import 'dart:io';

void main() {
  print('Simple Calculator');
  print('Choose an operation:');
  print('1. Addition (+)');
  print('2. Subtraction (-)');
  print('3. Multiplication (*)');
  print('4. Division (/)');

  int choice = int.parse(stdin.readLineSync()!);

  print('Enter first number:');
  double num1 = double.parse(stdin.readLineSync()!);

  print('Enter second number:');
  double num2 = double.parse(stdin.readLineSync()!);

  double result;

  // Using if..else..if
  if (choice == 1) {
    print(num1 + num2);
  } else if (choice == 2) {
    print(num1 - num2);
  } else if (choice == 3) {
    print(num1 * num2);
  } else if (choice == 4) {
    if (num2 != 0) {
      print(num1 / num2);
    } else {
      print('Error: Cannot divide by zero.');
    }
  } else {
    print('Invalid choice. Please select a valid operation.');
  }

  // Using switch
  switch (choice) {
    case 1:
      print(num1 + num2);
      break;
    case 2:
      print(num1 - num2);
      break;
    case 3:
      print(num1 * num2);
      break;
    case 4:
      if (num2 != 0) {
        print(num1 / num2);
      } else {
        print('Error: Cannot divide by zero.');
      }
      break;
    default:
      print('Invalid choice in switch case.');
  }
}
