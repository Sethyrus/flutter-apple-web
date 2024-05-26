import 'dart:math';
import 'package:apple/providers/navigation_bar/active_navigation_bar_item_provider.dart';
import 'package:apple/utils/constants/colors.dart';
import 'package:apple/utils/constants/media_queries.dart';
import 'package:apple/utils/constants/sizes.dart';
import 'package:apple/utils/helpers.dart';
import 'package:apple/widgets/navigation_bar/navigation_bar_dropdown_column.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NavigationBarDropdown extends ConsumerWidget {
  final double screenWidth;

  const NavigationBarDropdown({super.key, required this.screenWidth});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final padding = Helpers.getResponsiveSize(
      MediaQueries.navigationBarContentHPaddings,
      screenWidth,
    );

    final activeItem = ref.watch(activeNavigationBarItemProvider);

    if (activeItem?.dropdownColumnsConfig == null ||
        screenWidth <= Sizes.contentBreakpoint) {
      return const SizedBox.shrink();
    }

    return Container(
      width: double.infinity,
      color: CColors.navigationBarColorActive,
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.only(
          top: 40,
          bottom: 84,
          left: padding,
          right: padding,
        ),
        constraints: BoxConstraints(
          maxWidth: min(screenWidth, Sizes.navigationBarContentWidth),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: List.generate(
            activeItem!.dropdownColumnsConfig!.length,
            (i) => NavigationBarDropdownColumn(
              config: activeItem.dropdownColumnsConfig![i],
            ),
          ),
        ),
      ),
    );
  }
}
