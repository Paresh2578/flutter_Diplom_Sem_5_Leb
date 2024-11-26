import 'dart:io';

void main() {
  List<int> numbers = [];

  print("Enter 5 numbers:");

  for (int i = 1; i <= 5; i++) {
    int number = int.parse(stdin.readLineSync()!);
    numbers.add(number);
  }

  // Sort the numbers in increasing order
  numbers.sort();
  // for (int i = 0; i < numbers.length; i++) {
  //   for (int j = i + 1; j < numbers.length; j++) {
  //     if (numbers[i] > numbers[j]) {
  //       int temp = numbers[j];
  //       numbers[j] = numbers[i];
  //       numbers[i] = temp;
  //     }
  //   }
  // }

  // Display the sorted numbers
  print("Numbers in increasing order:");
  for (int number in numbers) {
    print(number);
  }
}
