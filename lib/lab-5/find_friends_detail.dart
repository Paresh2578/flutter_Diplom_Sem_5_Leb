import 'dart:io';

class Friend {
  String name;
  int age;
  String phoneNumber;

  Friend({
    required this.name,
    required this.age,
    required this.phoneNumber,
  });

  void displayDetails() {
    print('Name: $name');
    print('Age: $age');
    print('Phone Number: $phoneNumber');
  }
}

void main() {
  Map<String, Friend> friendsMap = {
    'John': Friend(name: 'John', age: 25, phoneNumber: '123-456-7890'),
    'Alice': Friend(name: 'Alice', age: 30, phoneNumber: '987-654-3210'),
    'Bob': Friend(name: 'Bob', age: 22, phoneNumber: '555-123-4567'),
    'Eve': Friend(name: 'Eve', age: 28, phoneNumber: '555-765-4321'),
  };

  print('Enter the name of the friend you want to search for:');
  String nameToSearch = stdin.readLineSync()!;

  if (friendsMap.containsKey(nameToSearch)) {
    print("\nDetails for $nameToSearch:");
    friendsMap[nameToSearch]?.displayDetails();
    // print(friendsMap[nameToSearch]?.age);
  } else {
    print("Friend not found.");
  }
}
