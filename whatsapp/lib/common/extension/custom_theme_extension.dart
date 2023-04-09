import 'package:flutter/material.dart';
import 'package:whatsapp/common/utils/color_assets.dart';

// BuildContext 에 ExtendedTheme extension 을 추가
extension ExtendedTheme on BuildContext {
  // theme 에 대한 getter 메서드 정의
  // CustomeThemeExtension 을 반환한다.
  CustomThemeExtension get theme {
    return Theme.of(this).extension<CustomThemeExtension>()!;
  }
}

class CustomThemeExtension extends ThemeExtension<CustomThemeExtension> {
  final Color? circleImageColor;
  final Color? greyColor;
  final Color? blueColor;
  final Color? langBtnBgColor;
  final Color? langBtnHighlightColor;

  const CustomThemeExtension({
    this.circleImageColor,
    this.greyColor,
    this.blueColor,
    this.langBtnBgColor,
    this.langBtnHighlightColor,
  });

  static const lightMode = CustomThemeExtension(
    circleImageColor: Color(0xFF25D366),
    greyColor: ColorAssets.greyLight,
    blueColor: ColorAssets.blueLight,
    langBtnBgColor: Color(0xFFF7F8Fa),
    langBtnHighlightColor: Color(0xFFE8E8ED),
  );

  static const darkMode = CustomThemeExtension(
    circleImageColor: ColorAssets.greenDark,
    greyColor: ColorAssets.greyDark,
    blueColor: ColorAssets.blueDark,
    langBtnBgColor: Color(0xFFF7F8FA),
    langBtnHighlightColor: Color(0xFFE8E8ED),
  );

  @override
  ThemeExtension<CustomThemeExtension> copyWith({
    Color? circleImageColor,
    Color? greyColor,
    Color? blueColor,
    Color? langBtnBgColor,
    Color? langBtnHighlightColor,
  }) {
    return CustomThemeExtension(
      circleImageColor: circleImageColor ?? this.circleImageColor,
      greyColor: greyColor ?? this.greyColor,
      blueColor: blueColor ?? this.blueColor,
      langBtnBgColor: langBtnBgColor ?? this.langBtnBgColor,
      langBtnHighlightColor:
          langBtnHighlightColor ?? this.langBtnHighlightColor,
    );
  }

  @override
  ThemeExtension<CustomThemeExtension> lerp(
      ThemeExtension<CustomThemeExtension>? other, double t) {
    if (other is! CustomThemeExtension) return this;
    return CustomThemeExtension(
      circleImageColor: Color.lerp(circleImageColor, other.circleImageColor, t),
      greyColor: Color.lerp(greyColor, other.greyColor, t),
      blueColor: Color.lerp(blueColor, other.blueColor, t),
      langBtnBgColor: Color.lerp(langBtnBgColor, other.langBtnBgColor, t),
      langBtnHighlightColor:
          Color.lerp(langBtnHighlightColor, other.langBtnHighlightColor, t),
    );
  }
}
