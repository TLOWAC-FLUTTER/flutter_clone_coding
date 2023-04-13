import 'package:flutter/material.dart';
import 'package:whatsapp/common/extension/custom_theme_extension.dart';
import 'package:whatsapp/common/utils/color_assets.dart';

class LanguageButton extends StatelessWidget {
  const LanguageButton({
    Key? key,
  }) : super(key: key);

  showBottomSheet(context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 4,
                width: 30,
                decoration: BoxDecoration(
                  color: context.theme.greyColor,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    splashColor: Colors.transparent,
                    splashRadius: 22,
                    iconSize: 22,
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(minWidth: 40),
                    icon: const Icon(
                      Icons.close_outlined,
                      color: ColorAssets.greyDark,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'App Language',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Divider(
                color: context.theme.greyColor!.withOpacity(0.3),
                thickness: 1,
              ),
              RadioListTile(
                value: true,
                groupValue: true,
                onChanged: (value) {},
                title: const Text("English"),
                subtitle: Text(
                  "United State",
                  style: TextStyle(
                    color: context.theme.greyColor,
                  ),
                ),
              ),
              RadioListTile(
                value: true,
                groupValue: false,
                onChanged: (value) {},
                title: const Text("한국어"),
                subtitle: Text(
                  "대한민국",
                  style: TextStyle(
                    color: context.theme.greyColor,
                  ),
                ),
              ),
              RadioListTile(
                value: true,
                groupValue: false,
                onChanged: (value) {},
                title: const Text("日本語"),
                subtitle: Text(
                  "日本",
                  style: TextStyle(
                    color: context.theme.greyColor,
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      child: Material(
        color: context.theme.langBtnBgColor,
        borderRadius: BorderRadius.circular(20),
        child: InkWell(
          // 버튼 클릭시 이벤트

          onTap: () => showBottomSheet(context),
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
