import 'dart:io';

void main() {
  // Prompt user to enter temperature in Fahrenheit
  stdout.write('Enter temperature in Fahrenheit: ');
  double? fahrenheit = double.tryParse(stdin.readLineSync()!);

  // Validate input
  if (fahrenheit == null) {
    print('Invalid input. Please enter a numeric value.');
    return;
  }

  // Convert Fahrenheit to Celsius
  double celsius = (fahrenheit - 32) * 5 / 9;

  // Display the result
  print('$fahrenheit°F is equal to ${celsius.toStringAsFixed(2)}°C.');
}
