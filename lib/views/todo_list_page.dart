import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_state_notifier_freezed_sample/controllers/todolist_controller.dart';

import '../controllers/settings_controller.dart';
import '../models/todo.dart';

class TodoListPage extends ConsumerWidget {
  const TodoListPage._();

  //変更なし
  static void show(BuildContext context) {
    Navigator.of(context).push<void>(
      MaterialPageRoute(
        builder: (context) => const TodoListPage._(),
      ),
    );
  }

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final todoListState = watch(todoListProvider);
    // todoListControllerを取得する
    final todoListController = watch(todoListProvider.notifier);
    final colorState = watch(settingsProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('TODO')),
      bottomSheet: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              //SettingsControllerを取得する
              onPressed: context.read(settingsProvider.notifier).changeColor,
              child: const Text('いろを変える'),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => todoListController.addTodo(context),
        child: const Icon(Icons.add_rounded),
      ),
      // whenを利用する場合、全パターンを書く必要となる
      // どれか一つを利用する場合、maybewhenを利用する
      body: todoListState.when(
        getData: (List<Todo> todos) {
          return ListView.builder(
            itemCount: todos.length,
            itemBuilder: (context, index) {
              final todo = todos[index];
              //変更なし
              return Dismissible(
                key: Key(todo.createdAt.toString()),
                direction: DismissDirection.endToStart,
                onDismissed: (direction) {
                  todoListController.removeTodo(todo);
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('${todo.description}を完了しました！'),
                  ));
                },
                background: Container(
                  color: Colors.red,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Icon(Icons.delete_rounded, color: Colors.white),
                      SizedBox(width: 16),
                    ],
                  ),
                ),
                child: ListTile(
                  title: Text(
                    todo.description.toString(),
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: colorState.color,
                    ),
                  ),
                ),
              );
            },
          );
        },
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
