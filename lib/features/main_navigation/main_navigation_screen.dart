import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int _selectedIndex = 0;

  final screens = [
    const Center(
      child: Text("home"),
    ),
    const Center(
      child: Text("search"),
    )
  ];

  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(items: [
        BottomNavigationBarItem(
          icon: Icon(
            CupertinoIcons.house,
            // color: Colors.white,
          ),
          label: "Home",
          tooltip: "home",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            CupertinoIcons.search,
            // color: Colors.white,
          ),
          label: "Search",
          tooltip: "search",
        ),
      ]),
      tabBuilder: (context, index) => screens[index],
    );
  }
}
