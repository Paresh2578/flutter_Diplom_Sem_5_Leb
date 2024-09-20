import 'package:flutter/material.dart';
import 'dart:convert';

class User {
  final int id;
  final String name;
  final String email;
  final bool isActive;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.isActive,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      isActive: json['isActive'],
    );
  }

}

class ModelClassGenerator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Model Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            String jsonString = '{"id":1,"name":"John Doe","email":"john.doe@example.com","isActive":true}';
            Map<String, dynamic> userMap = json.decode(jsonString);
            User user = User.fromJson(userMap);
            print('${user.id}\n${user.name}\n${user.email}\n${user.isActive}');
          },
          child: Text('Show User Info'),
        ),
      ),
    );
  }
}
