import 'dart:io';

int check(int n) {
  if (n <= 1) {
    return 0;
  }

  for (int i = 2; i <= n / 2; i++) {
    if (n % i == 0) {
      return 0;
    }
  }
  return 1;
}

void main() {
  print("Enter a number to check if it's prime:");
  int number = int.parse(stdin.readLineSync()!);

  int result = check(number);

  if (result == 1) {
    print("$number is a prime number.");
  } else {
    print("$number is not a prime number.");
  }
}
