import 'package:chat/utils/app_images.dart';
import 'package:chat/views/screens/chat_screen.dart';
import 'package:chat/views/screens/photo_screen.dart';
import 'package:chat/views/screens/profile_screen.dart';
import 'package:chat/views/screens/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigatorBarWidget extends StatefulWidget {
  const BottomNavigatorBarWidget({super.key});

  @override
  State<BottomNavigatorBarWidget> createState() =>
      _BottomNavigatorBarWidgetState();
}

class _BottomNavigatorBarWidgetState extends State<BottomNavigatorBarWidget> {
  int _currentScreen = 0;

  final List<Widget> _screens = [
    ProfileScreen(),
    ChatScreen(),
    PhotoScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentScreen],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentScreen,
        onTap: (index) {
          setState(() {
            _currentScreen = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppImages.person,
              color: _currentScreen == 0 ? Colors.green : Colors.grey.shade400,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppImages.chat,
              color: _currentScreen == 1 ? Colors.green : Colors.grey.shade400,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppImages.photo,
              color: _currentScreen == 2 ? Colors.green : Colors.grey.shade400,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppImages.setting,
              color: _currentScreen == 3 ? Colors.green : Colors.grey.shade400,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
