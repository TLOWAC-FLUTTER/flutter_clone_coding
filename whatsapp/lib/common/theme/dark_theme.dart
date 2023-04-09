import 'package:flutter/material.dart';
import 'package:whatsapp/common/utils/color_assets.dart';

ThemeData darkTheme() {
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
    backgroundColor: ColorAssets.backgroundDark,
    scaffoldBackgroundColor: ColorAssets.backgroundDark,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorAssets.greenDark,
        foregroundColor: ColorAssets.backgroundDark,
        splashFactory: NoSplash.splashFactory,
        elevation: 0,
        shadowColor: Colors.transparent,
      ),
    ),
  );
}
