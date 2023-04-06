import 'package:flutter/material.dart';
import 'package:whatsapp/common/utils/color_assets.dart';

class CustomerElevatedButton extends StatelessWidget {
  final double? buttonWidth;
  final VoidCallback onPressed;
  final String text;

  const CustomerElevatedButton({
    Key? key,
    this.buttonWidth,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: buttonWidth ?? MediaQuery.of(context).size.width - 100,
      height: 42,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: ColorAssets.greenDark, //버튼 배경 색깔
            foregroundColor: Colors.black, // 버튼 텍스트 색깔
            splashFactory: NoSplash.splashFactory,
            elevation: 0,
            shadowColor: Colors.transparent),
        child: Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold),
        ), // 버튼 텍스트
      ),
    );
  }
}
