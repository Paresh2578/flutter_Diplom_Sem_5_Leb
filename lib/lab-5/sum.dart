import 'dart:io';

void main() {
  print("Enter the number of elements:");
  int n = int.parse(stdin.readLineSync()!);

  List<int> numbers = [];

  print("Enter $n numbers:");
  for (int i = 0; i < n; i++) {
    int number = int.parse(stdin.readLineSync()!);
    numbers.add(number);
  }

  int sum = 0;
  for (int number in numbers) {
    if (number % 3 == 0 || number % 5 == 0) {
      sum += number;
    }
  }

  print("The sum of all numbers divisible by either 3 or 5 is: $sum");
}
