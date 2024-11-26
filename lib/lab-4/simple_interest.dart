import 'dart:io';

// Method to calculate simple interest
double calculateSimpleInterest(
    {required double principal, required double rate, required double time}) {
  return (principal * rate * time) / 100;
}

void main() {
  // Input from the user
  print("Enter the Principal amount:");
  double principal = double.parse(stdin.readLineSync()!);

  print("Enter the Rate of interest:");
  double rate = double.parse(stdin.readLineSync()!);

  print("Enter the Time period (in years):");
  double time = double.parse(stdin.readLineSync()!);

  // Calculate simple interest
  double interest =
      calculateSimpleInterest(principal: principal, rate: rate, time: time);

  // Display the result
  print("The Simple Interest is: \$${interest}");
}
