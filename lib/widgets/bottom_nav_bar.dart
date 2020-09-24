import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBar extends StatelessWidget {
  final int activeTab;
  final Function onChange;

  BottomNavBar({this.activeTab, this.onChange});

  final tabIcons = [
    './assets/rocket.svg',
    './assets/trash.svg',
    './assets/leaf.svg',
    './assets/fire.svg',
  ];

  @override
  Widget build(BuildContext context) {
    final List<Widget> tabs = [];

    for (int i = 0; i < tabIcons.length; i++) {
      tabs.add(IconButton(
        icon: SvgPicture.asset(tabIcons[i],
            color: i == activeTab ? Color(0xFFE1E2E3) : null),
        onPressed: () => onChange(i),
      ));
    }

    return Container(
      height: 60,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: tabs,
      ),
    );
  }
}
