import 'dart:io';

void main() {
  int sumPositiveEven = 0;
  int sumNegativeOdd = 0;

  while (true) {
    // Read a number from the user
    print("Enter a number (Enter 0 to quit):");
    int num = int.parse(stdin.readLineSync()!);

    if (num == 0) {
      break;
    }

    // Check if the number is positive even or negative odd
    if (num > 0 && num % 2 == 0) {
      sumPositiveEven += num;
    } else if (num < 0 && num % 2 != 0) {
      sumNegativeOdd += num;
    }
  }

  // Display the results
  print("Sum of all positive even numbers: $sumPositiveEven");
  print("Sum of all negative odd numbers: $sumNegativeOdd");
}
