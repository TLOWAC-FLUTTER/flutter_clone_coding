import 'package:flutter/material.dart';
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
        text: const TextSpan(
          text: "Read our ",
          style: TextStyle(
            color: ColorAssets.greyDark,
          ),
          children: [
            TextSpan(
              text: "Privacy Policy ",
              style: TextStyle(
                color: ColorAssets.blueDark,
              ),
            ),
            TextSpan(
              text: 'Tap "Agree and continue" to accept the ',
              style: TextStyle(
                color: ColorAssets.greyDark,
              ),
            ),
            TextSpan(
              text: "Term of Services. ",
              style: TextStyle(
                color: ColorAssets.blueDark,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
