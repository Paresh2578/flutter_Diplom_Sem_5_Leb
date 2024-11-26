import 'dart:io';

void main() {
  print("Enter a number: ");
  // Read input from the user
  {
    // Convert input to a number
    double number = double.parse(stdin.readLineSync()!);

    if (number > 0) {
      print("The number is positive.");
    } else if (number < 0) {
      print("The number is negative.");
    } else {
      print("The number is zero.");
    }
  }
}
