import 'package:apple/widgets/navigation_bar/navigation_bar_dropdown.dart';
import 'package:apple/widgets/navigation_bar/navigation_bar_items.dart';
import 'package:flutter/material.dart';

class CNavigationBar extends StatelessWidget {
  const CNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;

    return Column(
      children: [
        NavigationBarItems(screenWidth: screenWidth),
        NavigationBarDropdown(screenWidth: screenWidth),
      ],
    );
  }
}
