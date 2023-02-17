import 'dart:convert';

class User {
  final String? email;
  final String? password;

  User({
    this.email,
    this.password,
  });

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'password': password,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      email: map['email'] ?? '',
      password: map['password'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  User copyWith({
    String? email,
    String? password,
    List<dynamic>? cart,
  }) {
    return User(
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }
}
