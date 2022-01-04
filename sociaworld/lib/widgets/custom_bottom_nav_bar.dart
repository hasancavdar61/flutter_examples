import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    this.navOneIcon,
    this.navTwoIcon,
    this.navOneLabel,
    this.navTwoLabel,
  }) : super(key: key);

  final IconData? navOneIcon;
  final IconData? navTwoIcon;
  final String? navOneLabel;
  final String? navTwoLabel;

//BottomNavigationBar [items] listesi [bottomNavBarItem] şeklinde kullanılmıştır.
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: [
      BottomNavigationBarItem(icon: Icon(navOneIcon), label: navOneLabel),
      BottomNavigationBarItem(icon: Icon(navTwoIcon), label: navTwoLabel),
    ]);
  }
}
