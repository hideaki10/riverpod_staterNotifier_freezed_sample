import 'package:riverpod_state_notifier_freezed_sample/models/todo.dart';

//変更なし
class TodoRepository {
  TodoRepository._();
  static TodoRepository instance = TodoRepository._();

  final List<Todo> _todoList = [
    Todo.create(description: '掃除'),
    Todo.create(description: '洗濯'),
    Todo.create(description: 'flutter'),
  ];

  Future<List<Todo>> fetchTodoList() async {
    await Future<void>.delayed(const Duration(milliseconds: 1000));
    return _todoList;
  }

  void add(Todo todo) => _todoList.add(todo);

  void remove(Todo todo) => _todoList.remove(todo);
}
