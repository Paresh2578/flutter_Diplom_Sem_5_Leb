import 'dart:io';

void main() {
  print("Enter a number to find its factorial:");
  int num = int.parse(stdin.readLineSync()!);

  if (num < 0) {
    print("Factorial is not defined for negative numbers.");
  } else {
    int factorial = 1;

    // Calculate factorial using a loop
    for (int i = 1; i <= num; i++) {
      factorial *= i;
    }

    print("The factorial of $num is: $factorial");
  }
}
