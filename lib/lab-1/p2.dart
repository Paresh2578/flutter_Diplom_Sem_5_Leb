import 'dart:io';

void main() {
  stdout.write("Enter WT subject marks : ");
  int marks1 = int.parse(stdin.readLineSync()!);
  stdout.write("Enter Maths subject marks : ");
  int marks2 = int.parse(stdin.readLineSync()!);
  stdout.write("Enter english subject marks : ");
  int marks3 = int.parse(stdin.readLineSync()!);
  stdout.write("Enter dbms subject marks : ");
  int marks4 = int.parse(stdin.readLineSync()!);
  stdout.write("Enter ds subject marks : ");
  int marks5 = int.parse(stdin.readLineSync()!);

  stdout.write(
      'your result is ${(marks1 + marks2 + marks3 + marks4 + marks5) / 5}%');
}
