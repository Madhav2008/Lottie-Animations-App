// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:lottie_animations_app/Screens/Animation1_Screen/Animation1_Screen.dart';
import 'package:lottie_animations_app/Screens/Animation2_Screen/Animation2_Screen.dart';
import 'package:lottie_animations_app/Screens/Animation3_Screen/Animation3_Screen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  final List<Widget> _tabItems = [
    const Animation1Screen(),
    const Animation2Screen(),
    const Animation3Screen(),
  ];
  int _page = 0;
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 50,
        items: [
          Icon(
            Icons.animation,
            size: 30,
            color: (_page == 0) ? const Color(0xFF2a46c2) : Colors.white,
          ),
          Icon(
            Icons.looks_two,
            size: 30,
            color: (_page == 1) ? const Color(0xFF2a46c2) : Colors.white,
          ),
          Icon(
            Icons.looks_3,
            size: 30,
            color: (_page == 2) ? const Color(0xFF2a46c2) : Colors.white,
          ),
        ],
        color: Colors.blue.shade900,
        buttonBackgroundColor: Colors.grey[50],
        backgroundColor: Colors.blue.shade800,
        animationDuration: const Duration(milliseconds: 500),
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
        letIndexChange: (index) => true,
      ),
      body: _tabItems[_page],
    );
  }
}
