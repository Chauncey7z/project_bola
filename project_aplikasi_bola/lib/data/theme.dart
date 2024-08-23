import 'color_scheme.dart';
import 'package:flutter/material.dart';

final ThemeData colorThemeDataCustom = _buildColorTheme();

ThemeData _buildColorTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    colorScheme: lightColorScheme,
    primaryColor: lightColorScheme.primary,
    scaffoldBackgroundColor: lightColorScheme.background,
  );
}
