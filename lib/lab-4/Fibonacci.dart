import 'dart:io';

// Method to generate Fibonacci series up to N terms
void generateFibonacci(int n) {
  int first = 0, second = 1;

  print("Fibonacci series up to $n terms:");

  for (int i = 0; i < n; i++) {
    // Print the current number in the series
    stdout.write("$first ");

    // Update values for the next iteration
    int next = first + second;
    first = second;
    second = next;
  }
}

void main() {
  // Input from the user
  print("Enter the number of terms for the Fibonacci series:");
  int n = int.parse(stdin.readLineSync()!);

  if (n <= 0) {
    print("Please enter a positive integer greater than 0.");
  } else {
    // Generate the Fibonacci series
    generateFibonacci(n);
  }
}
