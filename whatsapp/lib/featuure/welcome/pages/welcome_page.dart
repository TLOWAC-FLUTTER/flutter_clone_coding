import 'package:flutter/material.dart';
import 'package:whatsapp/common/extension/custom_theme_extension.dart';
import 'package:whatsapp/common/utils/color_assets.dart';
import 'package:whatsapp/common/widgets/custom_elevated_button.dart';
import 'package:whatsapp/featuure/welcome/widgets/language_button.dart';
import 'package:whatsapp/featuure/welcome/widgets/policy_and_terms.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorAssets.backgroundDark,
      body: Column(
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 50,
                  vertical: 10,
                ),
                child: Image.asset(
                  'assets/images/circle.png',
                  color: context.theme.circleImageColor,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Expanded(
            child: Column(
              children: [
                const Text(
                  "Welcome to WhatsApp",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                PolicyAndTerms(),
                CustomerElevatedButton(
                  text: 'AGREE AND CONTINUE',
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 40,
                ),
                const LanguageButton()
              ],
            ),
          )
        ],
      ),
    );
  }
}
