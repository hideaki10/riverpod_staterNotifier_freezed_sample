// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'todos_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TodosStateTearOff {
  const _$TodosStateTearOff();

  TodosLoading loading() {
    return const TodosLoading();
  }

  TodosDate getData(List<Todo> todos) {
    return TodosDate(
      todos,
    );
  }
}

/// @nodoc
const $TodosState = _$TodosStateTearOff();

/// @nodoc
mixin _$TodosState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Todo> todos) getData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Todo> todos)? getData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodosLoading value) loading,
    required TResult Function(TodosDate value) getData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodosLoading value)? loading,
    TResult Function(TodosDate value)? getData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodosStateCopyWith<$Res> {
  factory $TodosStateCopyWith(
          TodosState value, $Res Function(TodosState) then) =
      _$TodosStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TodosStateCopyWithImpl<$Res> implements $TodosStateCopyWith<$Res> {
  _$TodosStateCopyWithImpl(this._value, this._then);

  final TodosState _value;
  // ignore: unused_field
  final $Res Function(TodosState) _then;
}

/// @nodoc
abstract class $TodosLoadingCopyWith<$Res> {
  factory $TodosLoadingCopyWith(
          TodosLoading value, $Res Function(TodosLoading) then) =
      _$TodosLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$TodosLoadingCopyWithImpl<$Res> extends _$TodosStateCopyWithImpl<$Res>
    implements $TodosLoadingCopyWith<$Res> {
  _$TodosLoadingCopyWithImpl(
      TodosLoading _value, $Res Function(TodosLoading) _then)
      : super(_value, (v) => _then(v as TodosLoading));

  @override
  TodosLoading get _value => super._value as TodosLoading;
}

/// @nodoc
class _$TodosLoading with DiagnosticableTreeMixin implements TodosLoading {
  const _$TodosLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodosState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'TodosState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TodosLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Todo> todos) getData,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Todo> todos)? getData,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodosLoading value) loading,
    required TResult Function(TodosDate value) getData,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodosLoading value)? loading,
    TResult Function(TodosDate value)? getData,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TodosLoading implements TodosState {
  const factory TodosLoading() = _$TodosLoading;
}

/// @nodoc
abstract class $TodosDateCopyWith<$Res> {
  factory $TodosDateCopyWith(TodosDate value, $Res Function(TodosDate) then) =
      _$TodosDateCopyWithImpl<$Res>;
  $Res call({List<Todo> todos});
}

/// @nodoc
class _$TodosDateCopyWithImpl<$Res> extends _$TodosStateCopyWithImpl<$Res>
    implements $TodosDateCopyWith<$Res> {
  _$TodosDateCopyWithImpl(TodosDate _value, $Res Function(TodosDate) _then)
      : super(_value, (v) => _then(v as TodosDate));

  @override
  TodosDate get _value => super._value as TodosDate;

  @override
  $Res call({
    Object? todos = freezed,
  }) {
    return _then(TodosDate(
      todos == freezed
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
    ));
  }
}

/// @nodoc
class _$TodosDate with DiagnosticableTreeMixin implements TodosDate {
  const _$TodosDate(this.todos);

  @override
  final List<Todo> todos;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodosState.getData(todos: $todos)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TodosState.getData'))
      ..add(DiagnosticsProperty('todos', todos));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TodosDate &&
            (identical(other.todos, todos) ||
                const DeepCollectionEquality().equals(other.todos, todos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(todos);

  @JsonKey(ignore: true)
  @override
  $TodosDateCopyWith<TodosDate> get copyWith =>
      _$TodosDateCopyWithImpl<TodosDate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Todo> todos) getData,
  }) {
    return getData(todos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Todo> todos)? getData,
    required TResult orElse(),
  }) {
    if (getData != null) {
      return getData(todos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodosLoading value) loading,
    required TResult Function(TodosDate value) getData,
  }) {
    return getData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodosLoading value)? loading,
    TResult Function(TodosDate value)? getData,
    required TResult orElse(),
  }) {
    if (getData != null) {
      return getData(this);
    }
    return orElse();
  }
}

abstract class TodosDate implements TodosState {
  const factory TodosDate(List<Todo> todos) = _$TodosDate;

  List<Todo> get todos => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodosDateCopyWith<TodosDate> get copyWith =>
      throw _privateConstructorUsedError;
}
