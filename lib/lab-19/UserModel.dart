class User {
  final int id;
  final String name;
  final String email;

  // Constructor
  User({
    required this.id,
    required this.name,
    required this.email,
  });

  // Factory method to create a `User` instance from JSON.
  factory User.fromJson(Map<String, dynamic> json) {
    return User(id: json['id'], name: json['name'], email: json['email']);
  }

  // Method to convert `User` instance to JSON.
  Map<String, dynamic> toJson(User user) {
    return {
      'id': user.id,
      'name': user.name,
      'email': user.email,
    };
  }
}
