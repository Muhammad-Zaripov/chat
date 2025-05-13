import 'package:chat/views/screens/login_screen.dart';
import 'package:flutter/material.dart';

import '../views/screens/signin_screen.dart';
import '../views/widgets/bottom_navigator_bar_widgte.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavigatorBarWidget(),
      themeMode: ThemeMode.system,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
    );
  }
}
