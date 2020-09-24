import 'package:booster/screens/battery_saver_screen.dart';
import 'package:booster/screens/junk_cleaner_screen.dart';
import 'package:flutter/material.dart';

import 'screens/device_booster_screen.dart';
import 'widgets/bottom_nav_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int activeTab = 0;

  final List<Widget> screens = [
    DeviceBoosterScreen(),
    JunkCleanerScreen(),
    BatterySaverScreen(),
    Container(),
  ];

  void onTabChange(int newTab) {
    setState(() => activeTab = newTab);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xFF0c141c),
        child: SafeArea(
          child: Scaffold(
              backgroundColor: Colors.transparent,
              bottomNavigationBar:
                  BottomNavBar(activeTab: activeTab, onChange: onTabChange),
              body: screens[activeTab]),
        ));
  }
}
