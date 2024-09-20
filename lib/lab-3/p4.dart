class Friend {
  String name;
  int age;
  String phoneNumber;
  String address;

  Friend(
      {required this.name,
        required this.age,
        required this.phoneNumber,
        required this.address});

  @override
  String toString() {
    return 'Name: $name, Age: $age, Phone Number: $phoneNumber, Address: $address';
  }
}

void main() {
  Map<String, Friend> friendsDictionary = {
    'Alice': Friend(
        name: 'Alice',
        age: 25,
        phoneNumber: '123-456-7890',
        address: '123 Elm Street'),
    'Bob': Friend(
        name: 'Bob',
        age: 28,
        phoneNumber: '098-765-4321',
        address: '456 Oak Avenue'),
    'Charlie': Friend(
        name: 'Charlie',
        age: 22,
        phoneNumber: '555-555-5555',
        address: '789 Pine Road')
  };

  void findFriendDetails(String name) {
    if (friendsDictionary.containsKey(name)) {
      print(friendsDictionary[name].toString());
    } else {
      print('Friend not found.');
    }
  }

  findFriendDetails('Alice');
  findFriendDetails('Bob');
  findFriendDetails('David');
}
