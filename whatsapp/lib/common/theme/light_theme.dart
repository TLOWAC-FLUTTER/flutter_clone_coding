import 'package:flutter/material.dart';
import 'package:whatsapp/common/utils/color_assets.dart';

ThemeData lightTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    backgroundColor: ColorAssets.backgroundLight,
    scaffoldBackgroundColor: ColorAssets.backgroundLight,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorAssets.greenLight,
        foregroundColor: ColorAssets.backgroundLight,
        splashFactory: NoSplash.splashFactory,
        elevation: 0,
        shadowColor: Colors.transparent,
      ),
    ),
  );
}
