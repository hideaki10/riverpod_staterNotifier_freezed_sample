// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'color_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ColorStateTearOff {
  const _$ColorStateTearOff();

  _ColorState call([Color color = Colors.red]) {
    return _ColorState(
      color,
    );
  }
}

/// @nodoc
const $ColorState = _$ColorStateTearOff();

/// @nodoc
mixin _$ColorState {
  Color get color => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ColorStateCopyWith<ColorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColorStateCopyWith<$Res> {
  factory $ColorStateCopyWith(
          ColorState value, $Res Function(ColorState) then) =
      _$ColorStateCopyWithImpl<$Res>;
  $Res call({Color color});
}

/// @nodoc
class _$ColorStateCopyWithImpl<$Res> implements $ColorStateCopyWith<$Res> {
  _$ColorStateCopyWithImpl(this._value, this._then);

  final ColorState _value;
  // ignore: unused_field
  final $Res Function(ColorState) _then;

  @override
  $Res call({
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc
abstract class _$ColorStateCopyWith<$Res> implements $ColorStateCopyWith<$Res> {
  factory _$ColorStateCopyWith(
          _ColorState value, $Res Function(_ColorState) then) =
      __$ColorStateCopyWithImpl<$Res>;
  @override
  $Res call({Color color});
}

/// @nodoc
class __$ColorStateCopyWithImpl<$Res> extends _$ColorStateCopyWithImpl<$Res>
    implements _$ColorStateCopyWith<$Res> {
  __$ColorStateCopyWithImpl(
      _ColorState _value, $Res Function(_ColorState) _then)
      : super(_value, (v) => _then(v as _ColorState));

  @override
  _ColorState get _value => super._value as _ColorState;

  @override
  $Res call({
    Object? color = freezed,
  }) {
    return _then(_ColorState(
      color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc
class _$_ColorState implements _ColorState {
  const _$_ColorState([this.color = Colors.red]);

  @JsonKey(defaultValue: Colors.red)
  @override
  final Color color;

  @override
  String toString() {
    return 'ColorState(color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ColorState &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(color);

  @JsonKey(ignore: true)
  @override
  _$ColorStateCopyWith<_ColorState> get copyWith =>
      __$ColorStateCopyWithImpl<_ColorState>(this, _$identity);
}

abstract class _ColorState implements ColorState {
  const factory _ColorState([Color color]) = _$_ColorState;

  @override
  Color get color => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ColorStateCopyWith<_ColorState> get copyWith =>
      throw _privateConstructorUsedError;
}
