import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

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

class JsonFromAssets extends StatefulWidget {
  @override
  _JsonFromAssetsState createState() => _JsonFromAssetsState();
}

class _JsonFromAssetsState extends State<JsonFromAssets> {
  String _jsonString = '';

  @override
  void initState() {
    _loadUserData();
  }

  Future<void> _loadUserData() async {
    final String response = await rootBundle.loadString('assets/data.json');
    setState(() {
      _jsonString = response;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('JSON Data')),
      body: Center(
        child: Text(
          _jsonString,
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
