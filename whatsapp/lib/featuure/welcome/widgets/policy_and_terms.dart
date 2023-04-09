import 'package:flutter/material.dart';
import 'package:whatsapp/common/extension/custom_theme_extension.dart';
import 'package:whatsapp/common/utils/color_assets.dart';

class PolicyAndTerms extends StatelessWidget {
  const PolicyAndTerms({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 20,
      ),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: "Read our ",
          style: TextStyle(
            color: context.theme.greyColor,
          ),
          children: [
            TextSpan(
              text: "Privacy Policy ",
              style: TextStyle(
                color: context.theme.blueColor,
              ),
            ),
            TextSpan(
              text: 'Tap "Agree and continue" to accept the ',
              style: TextStyle(
                color: context.theme.greyColor,
              ),
            ),
            TextSpan(
              text: "Term of Services. ",
              style: TextStyle(
                color: context.theme.blueColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
