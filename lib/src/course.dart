class Course {
  final String id;
  final String name;

  const Course({required this.id, required this.name});

  Course copyWith({String? id, String? name}) {
    return Course(id: id ?? this.id, name: name ?? this.name);
  }

  factory Course.fromJson(Map<String, dynamic> json) {
    final id = json['id'];
    final name = json['name'];
    if (id is! String || name is! String) {
      throw const FormatException('Course.fromJson : champs invalides ou manquants');
    }
    return Course(id: id, name: name);
  }
}
