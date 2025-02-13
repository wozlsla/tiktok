import 'package:flutter/material.dart';
import 'package:tiktok/constants/sizes.dart';
// import 'package:tiktok/features/authentication/sign_up_screen.dart';
// import 'package:tiktok/features/onboarding/interests_screen.dart';
import 'package:tiktok/features/main_navigation/main_navigation_screen.dart';
import 'package:tiktok/features/videos/video_recording_screen.dart';

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
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Color(0xFFE9435A),
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: Color(0xFFE9435A),
          // selectionColor: Color(0xFFE9435A),
        ),
        // splashColor: Colors.transparent,
        // highlightColor: Colors.transparent,
        useMaterial3: false,
        appBarTheme: AppBarTheme(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          elevation: 0,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: Sizes.size16 + Sizes.size2,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      home: VideoRecordingScreen(), // MainNavigationScreen(), SignUpScreen()
    );
  }
}
