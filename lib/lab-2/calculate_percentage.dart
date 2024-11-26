import 'dart:io';

void main() {
  print("Enter marks for five subjects:");

  double totalMarks = 0.0;

  for (int i = 1; i <= 5; i++) {
    print("Enter marks for subject $i:");
    double marks = double.parse(stdin.readLineSync()!);
    totalMarks += marks;
  }

  // Calculate percentage
  double percentage = totalMarks / 5;

  // Display the percentage
  print("Your percentage is: $percentage%");

  if (percentage < 35) {
    print("Result: Fail");
  } else if (percentage >= 35 && percentage < 45) {
    print("Result: Pass Class");
  } else if (percentage >= 45 && percentage < 60) {
    print("Result: Second Class");
  } else if (percentage >= 60 && percentage < 70) {
    print("Result: First Class");
  } else {
    print("Result: Distinction");
  }
}
