import 'dart:io';

void main() {
  print("Enter the first number:");
  int start = int.parse(stdin.readLineSync()!);

  print("Enter the second number:");
  int end = int.parse(stdin.readLineSync()!);

  print(
      "Numbers between $start and $end that are divisible by 2 but not by 3:");

  for (int i = start; i <= end; i++) {
    if (i % 2 == 0 && i % 3 != 0) {
      print(i);
    }
  }
}
