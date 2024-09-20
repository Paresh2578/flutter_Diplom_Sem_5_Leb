import 'dart:io';

void main() {
  stdout.write("Enter weight in pound : ");
  int weight = int.parse(stdin.readLineSync()!);
  double weightInKg = weight / 2.20462;
  stdout.write("Enter height in meter : ");
  int height = int.parse(stdin.readLineSync()!);
  int heightInInch = height * 12;

  stdout.write(
      'your bmi is ${(heightInInch / weightInKg) * (heightInInch / weightInKg)}');
}
