import 'package:flutter/material.dart';
import 'package:whatsapp/common/extension/custom_theme_extension.dart';
import 'package:whatsapp/common/utils/color_assets.dart';

class LanguageButton extends StatelessWidget {
  const LanguageButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      child: Material(
        color: context.theme.langBtnBgColor,
        borderRadius: BorderRadius.circular(20),
        child: InkWell(
          // 버튼 클릭시 이벤트
          onTap: () {},
          borderRadius: BorderRadius.circular(20),
          splashFactory: NoSplash.splashFactory,
          highlightColor: context.theme.langBtnHighlightColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.language,
                  color: ColorAssets.greenDark,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'English',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: ColorAssets.greenDark,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
