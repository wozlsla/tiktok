import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tiktok/constants/sizes.dart';
import 'package:tiktok/features/authentication/sign_up_screen.dart';
import 'package:tiktok/features/main_navigation/main_navigation_screen.dart';

void main() {
  runApp(const TikTokApp());
}

class TikTokApp extends StatelessWidget {
  const TikTokApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "TikTok Clone",
      themeMode: ThemeMode.system,
      theme: ThemeData(
        brightness: Brightness.light, // default
        textTheme: Typography.blackMountainView,
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
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        textTheme: Typography.whiteMountainView,
        scaffoldBackgroundColor: Colors.black,
        useMaterial3: false,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.grey.shade900,
        ),
        bottomAppBarTheme: BottomAppBarTheme(
          color: Colors.grey.shade900,
          elevation: 0,
        ),
        primaryColor: Color(0xFFE9435A),
      ),
      home: SignUpScreen(), // MainNavigationScreen()
    );
  }
}
