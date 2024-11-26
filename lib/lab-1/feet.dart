import 'dart:io';

void main() {
  // Prompt user to enter a length in meters
  stdout.write('Enter length in meters: ');
  double? meters = double.tryParse(stdin.readLineSync()!);

  // Validate input
  if (meters == null) {
    print('Invalid input. Please enter a numeric value.');
    return;
  }

  // Conversion factor: 1 meter = 3.28084 feet
  const double meterToFeet = 3.28084;

  // Convert meters to feet
  double feet = meters * meterToFeet;

  // Display the result
  print('$meters meters is equal to ${feet.toStringAsFixed(2)} feet.');
}
