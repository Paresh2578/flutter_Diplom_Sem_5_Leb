import 'package:flutter/material.dart';

class User {
  final String name;
  final String surname;
  final String birthdate;
  final String city;

  User({required this.name, required this.surname, required this.birthdate, required this.city});
}

class UserListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<User> users = [
      User(name: 'Amit', surname: 'Sharma', birthdate: '10-05-1985', city: 'Delhi'),
      User(name: 'Priya', surname: 'Verma', birthdate: '22-11-1990', city: 'Mumbai'),
      User(name: 'Ravi', surname: 'Patel', birthdate: '17-08-1987', city: 'Ahmedabad'),
      User(name: 'Sneha', surname: 'Reddy', birthdate: '03-02-1993', city: 'Hyderabad'),
      User(name: 'Vikram', surname: 'Singh', birthdate: '29-06-1989', city: 'Jaipur'),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('User List'),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('${users[index].name} ${users[index].surname}'),
            subtitle: Text('Birthdate: ${users[index].birthdate}\nCity: ${users[index].city}'),
            contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          );
        },
      ),
    );
  }
}