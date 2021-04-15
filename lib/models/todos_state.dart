import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_state_notifier_freezed_sample/models/todo.dart';

part 'todos_state.freezed.dart';

// Unionクラス
// 各パターンをstate化する
@freezed
class TodosState with _$TodosState {
  const factory TodosState.loading() = TodosLoading;
  const factory TodosState.getData(List<Todo> todos) = TodosDate;
}
