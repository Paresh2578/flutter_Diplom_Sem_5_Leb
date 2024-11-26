import 'dart:io';

void main() {
  // Create a phonebook using Map
  Map<String, String> phonebook = {
    'John': '123-456-7890',
    'Jane': '987-654-3210',
    'Bob': '555-123-4567',
    'Alice': '555-765-4321'
  };

  print("Phonebook:");
  phonebook.forEach((name, phone) {
    print('$name: $phone');
  });

  print("\nEnter a name to search for their phone number:");
  String nameToSearch = stdin.readLineSync()!;

  if (phonebook.containsKey(nameToSearch)) {
    print("$nameToSearch's phone number is: ${phonebook[nameToSearch]}");
  } else {
    print("Contact not found.");
  }
}
