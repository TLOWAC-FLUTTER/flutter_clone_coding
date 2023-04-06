import 'package:flutter/material.dart';
import 'package:whatsapp/featuure/welcome/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whats App',
      home: Scaffold(
        body: Center(
          child: WelcomePage(),
        ),
      ),
    );
  }
}
