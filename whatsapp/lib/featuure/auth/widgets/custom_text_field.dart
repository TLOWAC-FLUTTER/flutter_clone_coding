import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:whatsapp/common/extension/custom_theme_extension.dart';
import 'package:whatsapp/common/utils/color_assets.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final bool? readOnly;
  final TextAlign? textAlign;
  final TextInputType? keyboardType;
  final String? prefixText;
  final VoidCallback? onTap;
  final Widget? suffixIcon;
  final Function(String)? onChanged;

  const CustomTextField({
    super.key,
    this.controller,
    this.hintText,
    this.readOnly,
    this.textAlign,
    this.keyboardType,
    this.prefixText,
    this.onTap,
    this.suffixIcon,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      readOnly: readOnly ?? false,
      textAlign: textAlign ?? TextAlign.center,
      keyboardType: readOnly == null ? keyboardType : null,
      onTap: onTap,
      onChanged: onChanged,
      decoration: InputDecoration(
        isDense: true,
        prefixText: prefixText,
        suffix: suffixIcon,
        hintText: hintText,
        hintStyle: TextStyle(color: context.theme.greyColor),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: ColorAssets.greenDark),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: ColorAssets.greenDark, width: 2),
        ),
      ),
    );
  }
}
