import 'dart:io';

void main() {
  print("Enter string :");
  String original = stdin.readLineSync()!;
  String reversed = original.split('').reversed.join('');

  for (int i = original.length - 1; i >= 0; i--) {
    stdout.write(original[i]);
  }
  print("");

  print("Original String: $original");
  print("Reversed String: $reversed");
}
