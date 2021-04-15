import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_state_notifier_freezed_sample/models/color_state.dart';

final settingsProvider =
    StateNotifierProvider<SettingsController, ColorState>((ref) {
  return SettingsController();
});

class SettingsController extends StateNotifier<ColorState> {
  SettingsController() : super(const ColorState());

  final random = Random();
  int get randomByte => random.nextInt(256);

  //ランダムな色を生成する
  //colorフィールドに直接変更ではなく、state.copywithを利用してstateを変更
  void changeColor() {
    state = state.copyWith(
      color: Color.fromARGB(255, randomByte, randomByte, randomByte),
    );
  }
}
