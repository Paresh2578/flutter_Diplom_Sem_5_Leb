import 'dart:convert';

import 'package:lebs/lab-19/UserModel.dart';

void main() {
  String jsonString =
      '{"id": 1, "name": "John Doe", "email": "john.doe@example.com"}';

  // Parse JSON string into a Map
  Map<String, dynamic> userMap = jsonDecode(jsonString);

  // Convert Map to User instance
  User user = User.fromJson(userMap);

  print('User Name: ${user.name}');
  print('User Email: ${user.email}');

  // Convert User instance back to JSON
  String jsonOutput = user.toJson(user).toString();
  print('JSON Output: $jsonOutput');
}
