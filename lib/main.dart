import 'package:flutter/material.dart';
import 'package:tiktok/screens/sign_up/sign_up_screen.dart';

void main() {
  runApp(const TikTokApp());
}

class TikTokApp extends StatelessWidget {
  const TikTokApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TikTok Clone',
      theme: ThemeData(
        primaryColor: Color(0xFFE9435A),
        // colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFFE9435A)),
        // useMaterial3: true,
      ),
      home: SignUpScreen(),
    );
  }
}
