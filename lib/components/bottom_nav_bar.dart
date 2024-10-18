import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  final void Function(int)? onTabChange;
  const MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    // custom bottom navigation bar component
    return GNav(
        rippleColor: Colors.grey.shade300,
        tabBorderRadius: 32.0,
        onTabChange: (value) => onTabChange!(value),
        tabBackgroundColor: Colors.white,
        activeColor: Colors.grey[800],
        tabs: const [
          GButton(
            textColor: Colors.black,
            iconColor: Colors.black,
            icon: Icons.home,
            text: "Shop",
          ),
          GButton(
            textColor: Colors.black,
            iconColor: Colors.black,
            icon: Icons.shopping_bag_rounded,
            text: "Cart",
          ),
        ]);
  }
}
