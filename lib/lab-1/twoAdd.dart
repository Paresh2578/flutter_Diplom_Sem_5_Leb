import 'dart:io';

void main() {
  // Prompt user to enter the first number
  stdout.write('Enter the first number: ');
  double? number1 = double.tryParse(stdin.readLineSync()!);

  // Prompt user to enter the second number
  stdout.write('Enter the second number: ');
  double? number2 = double.tryParse(stdin.readLineSync()!);

  // Validate input
  if (number1 == null || number2 == null) {
    print('Invalid input. Please enter numeric values.');
    return;
  }

  // Calculate the sum
  double sum = number1 + number2;

  // Display the result
  print('The sum of $number1 and $number2 is $sum.');
}
