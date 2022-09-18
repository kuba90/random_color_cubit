/* External dependencies*/
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';

part 'color_state.dart';

class ColorCubit extends Cubit<ColorState> {
  ColorCubit() : super(const ColorInitial());

  void changeColor() {
    RandomColor randomColor = RandomColor();
    emit(ColorDownloaded(randomColor.randomColor()));
  }
}
