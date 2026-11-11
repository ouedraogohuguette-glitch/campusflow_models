import 'dart:convert';

import 'task.dart';

/// Dépôt simulé : JSON en dur et chargement simulé avec Future.delayed.
class Repository {
  static const _tasksJson =
      '[{"id":"t1","title":"Tâche 1","isDone":false},'
      '{"id":"t2","title":"Tâche 2","isDone":true}]';

  Future<List<Task>> loadTasks() async {
    await Future.delayed(const Duration(seconds: 1));
    final list = jsonDecode(_tasksJson) as List;
    return list.map((e) => Task.fromJson(e as Map<String, dynamic>)).toList();
  }
}
