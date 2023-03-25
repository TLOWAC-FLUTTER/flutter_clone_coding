import 'package:flutter/material.dart';

class EmoticonFace extends StatelessWidget {
  final String emotionFace;

  const EmoticonFace({Key? key, required this.emotionFace}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.white),
        padding: EdgeInsets.all(12),
        child: Text(emotionFace, style: TextStyle(fontSize: 28)));
  }
}
