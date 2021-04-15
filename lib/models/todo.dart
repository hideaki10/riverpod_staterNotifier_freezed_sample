import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo.freezed.dart';

@freezed
class Todo with _$Todo {
  const factory Todo(
    String? description,
    DateTime? createdAt,
  ) = _Todo;

  factory Todo.create({@required String? description}) {
    return Todo(description, DateTime.now());
  }
}
