import 'package:campusflow_models/campusflow_models.dart';
import 'package:test/test.dart';

void main() {
  test('copyWith', () {
    const task = Task(id: 't1', title: 'Atelier');
    final updated = task.copyWith(isDone: true);

    expect(updated.isDone, isTrue);
    expect(updated.title, task.title);
    expect(task.isDone, isFalse);
  });

  test('fromJson', () {
    final course = Course.fromJson({'id': 'c1', 'name': 'Programmation mobile'});

    expect(course.id, 'c1');
    expect(course.name, 'Programmation mobile');
  });

  test('erreur attendue', () {
    expect(() => User.fromJson({'id': 'u1'}), throwsFormatException);
  });
}
