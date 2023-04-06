import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:whatsapp/common/utils/color_assets.dart';

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
                  color: ColorAssets.greenDark,
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
                Padding(
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
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 100,
                  height: 42,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: ColorAssets.greenDark, //버튼 배경 색깔
                        foregroundColor: Colors.black, // 버튼 텍스트 색깔
                        splashFactory: NoSplash.splashFactory,
                        elevation: 0,
                        shadowColor: Colors.transparent),
                    child: const Text(
                      'AGREE AND CONTINUE',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ), // 버튼 텍스트
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  width: 150,
                  child: Material(
                    color: Color(0xFF182229),
                    borderRadius: BorderRadius.circular(20),
                    child: InkWell(
                      // 버튼 클릭시 이벤트
                      onTap: () {},
                      borderRadius: BorderRadius.circular(20),
                      splashFactory: NoSplash.splashFactory,
                      highlightColor: const Color(0xFF09141A),
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
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
