class User {
  final String id;
  final String name;

  const User({required this.id, required this.name});

  User copyWith({String? id, String? name}) {
    return User(id: id ?? this.id, name: name ?? this.name);
  }

  factory User.fromJson(Map<String, dynamic> json) {
    final id = json['id'];
    final name = json['name'];
    if (id is! String || name is! String) {
      throw const FormatException('User.fromJson : champs invalides ou manquants');
    }
    return User(id: id, name: name);
  }
}
