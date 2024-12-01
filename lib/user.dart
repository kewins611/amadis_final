class User {
  final String name;
  final String id;
  final String email;

  User({
    required this.name,
    required this.id,
    required this.email,
  });

  // Convertir de JSON a un objeto User
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'],
      id: json['id'],
      email: json['email'],
    );
  }

  // Convertir de un objeto User a JSON (si lo necesitas)
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'id': id,
      'email': email,
    };
  }
}
