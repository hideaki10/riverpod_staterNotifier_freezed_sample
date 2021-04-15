import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_state_notifier_freezed_sample/controllers/settings_controller.dart';
import 'package:riverpod_state_notifier_freezed_sample/models/repository/todo_repository.dart';
import 'package:riverpod_state_notifier_freezed_sample/models/todo.dart';
import 'package:riverpod_state_notifier_freezed_sample/models/todos_state.dart';

//RiverPodは0.14.0以後に StateNotifierProviderのsyntaxを変えて、分かりやすくなる
//変更点
//1. Stateクラスはパラメータとして渡す
//2. watch(settingsProvider)の戻り値は SettingsControllerではなくColorStateとなる
//3. SettingsControllerを取得したい場合、watch(settingsProvider)ではなくwatch(settingsProvider.notifier)となる
//4. watch(stateNotifierProvider.state)が非推薦となる
//詳細は https://github.com/rrousselGit/river_pod/issues/341
final todoListProvider = StateNotifierProvider<TodoListController, TodosState>(
  (ref) {
    final colorState = ref.watch(settingsProvider);
    return TodoListController(color: colorState.color);
  },
);

class TodoListController extends StateNotifier<TodosState> {
  TodoListController({this.color}) : super(const TodosState.loading()) {
    //初期化
    _fetchTodoList();
  }
  final Color? color;

  //Repsitoryからデータ取得処理
  //ない場合、stateをloadingに変更
  //ある場合、stateをgetDataに変更
  Future<void> _fetchTodoList() async {
    final _todos = await TodoRepository.instance.fetchTodoList();
    if (_todos.isNotEmpty) {
      state = TodosState.getData(_todos);
    } else {
      state = const TodosLoading();
    }
  }

  //変更なし
  Future<void> addTodo(BuildContext context) async {
    var description = '';

    final result = await showDialog<bool?>(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: TextFormField(
            cursorColor: color,
            autofocus: true,
            onChanged: (value) => description = value,
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: Text('追加', style: TextStyle(color: color)),
            ),
          ],
        );
      },
    );
    if (result == true && description.isNotEmpty) {
      final newTodo = Todo.create(description: description);
      TodoRepository.instance.add(newTodo);
      await _fetchTodoList();
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('$descriptionを追加しました！'),
      ));
    }
  }

  //変更なし
  Future<void> removeTodo(Todo todo) async {
    TodoRepository.instance.remove(todo);
    await _fetchTodoList();
  }
}
