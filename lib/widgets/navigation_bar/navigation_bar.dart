import 'dart:math';

import 'package:apple/utils/constants/colors.dart';
import 'package:apple/utils/constants/media_queries.dart';
import 'package:apple/utils/constants/sizes.dart';
import 'package:apple/utils/helpers.dart';
import 'package:apple/widgets/navigation_bar/navigation_bar_items.dart';
import 'package:flutter/material.dart';

class CNavigationBar extends StatelessWidget {
  const CNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    final height = Helpers.getResponsiveSize(
      MediaQueries.navigationBarHeights,
      screenWidth,
    );

    return Container(
      color: CColors.navigationBarColor,
      height: height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            constraints: BoxConstraints(
              maxWidth: min(screenWidth, Sizes.navigationBarContentWidth),
            ),
            child: const NavigationBarItems(),
          ),
        ],
      ),
    );
  }
}
