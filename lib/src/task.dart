class Task {
  final String id;
  final String title;
  final bool isDone;

  const Task({required this.id, required this.title, this.isDone = false});

  Task copyWith({String? id, String? title, bool? isDone}) {
    return Task(
      id: id ?? this.id,
      title: title ?? this.title,
      isDone: isDone ?? this.isDone,
    );
  }

  factory Task.fromJson(Map<String, dynamic> json) {
    final id = json['id'];
    final title = json['title'];
    if (id is! String || title is! String) {
      throw const FormatException('Task.fromJson : champs invalides ou manquants');
    }
    return Task(id: id, title: title, isDone: json['isDone'] as bool? ?? false);
  }
}
